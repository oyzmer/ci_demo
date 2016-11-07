<?php
// 主要放置后台 UI 生成器

if (!function_exists('ui_btn_switch')) {
	/**
	 * btn swtich 生成器
	 * @param  string field 字段
	 * @param  any default 默认值
	 * @param  array $arr 列表表  [{title:xxx,value:xxx}],分类 会将 value 取 id
	 * @return html
	 */
	function ui_btn_switch($field=false,$default=false,$arr=false){
		if ($field ===false or $arr===false or $default===false) {
			return false;
		}
		$tmp = '<div class="btn-group btn-switch">';
		// 保证array中有  title ,value
		foreach ($arr as $k => $v) {
			// 针对分类
			if (isset($v['id'])) {
				$value = $v['id'];
			}else{
				$value = $v['value'];
			}

			$class= set_switch($field,$value,$default,'btn-primary','');
			$tmp .= '<a href="#" data-value="'.$value.'" class="btn '.$class.'">'.$v['title'].'</a>';
		}
		$tmp .= '</div>';
		$tmp .= '<input type="hidden" id="'.$field.'" name="'.$field.'" value="'.set_value($field,$default).'">';
		return $tmp;
	}
}

if (!function_exists('ui_btn_select')) {
	/**
	 * btn select 生成器
	 * @param  string field 字段
	 * @param  any default 默认值
	 * @param  array $arr 列表表  [{title:xxx,value:xxx}],分类 会将 value 取 id
	 * @return html
	 */
	function ui_btn_select($field=false,$default=false,$arr=false){
		if ($field ===false or $arr===false or $default===false) {
			return false;
		}

		// $fn = function($v,$o){
		// 	return
		// };

		// $fn = '<option title="{{$v["title"]}}" value="{{$v["value"]}}" '.set_switch($o['field'], $v['value'], $o['default'], ' selected="selected" class="option-select" ','').'>'.$v['op_header'].'&nbsp;'. $v['title'].'</option>'

		$tmp = '<select name="'.$field.'" id="'.$field.'" class="bselect" data-size="auto" data-live-search="true">';
		$tmp .= ui_tree($arr,array('field'=>$field,'default'=>$default));
		$tmp .= '</select>';
		return $tmp;
	}
}


if (!function_exists('ui_btn_coltypes')) {
	/**
	 * 类别按钮
	 * @param  string $ids 上传列表值
	 * @return array       数组
	 */
	function ui_btn_coltypes($cid=0,$field=false){
		if (!is_numeric($cid) or !$field) {
			return false;
		}
		$CI =& get_instance();
		$url = site_url('coltypes/index/').'?cid='.$cid.'&field='.$field.'&rc='.$CI->class;
		$tmp = '<a href="'.$url.'" class="btn btn-info" title="'.lang($field).'">管理'.lang($field).'</a>';
		return $tmp;
	}
}

// TODO:废弃
if (!function_exists('ui_btns_coltypes')) {
	/**
	 * 类别列表按钮
	 * @param  integer $cid     cid
	 * @param  boolean $field   类别字段
	 * @param  boolean $baseurl 基本地址
	 * @return string           按钮组
	 */
	function ui_btns_coltypes($cid=0,$field=false,$baseurl=false){

		$tmp = '<div class="btn-group">';
		$active = false;
		if (isset($_GET[$field])) {
			$active = $_GET[$field];
		}
		if (!$active) {
			$tmp .= '<a href="'.$baseurl.'" class="btn btn-primary">所有</a>';
		}else{
			$tmp .= '<a href="'.$baseurl.'" class="btn">所有</a>';
		}
		$CI =& get_instance();
		$arr = list_coltypes($cid,'typea');
		foreach ($arr as $k => $v) {
			$tmp .='<a href="'.$baseurl.'&'.$field.'='.$v['id'].'" class="btn';
			if ($v['id'] == $active) {
				$tmp .= " btn-primary";
			}
			$tmp .='">'.$v['title'].'</a>';
		}
		$tmp .="</div>";
		return $tmp;
	}
}

// 获取栏目名称
if(!function_exists('tag_columns'))
{
	function tag_columns($id,$column='title')
	{
		static $a=array();
		$id=intval($id);
		if(!isset($a[$id])){
			$CI=&get_instance();
			$CI->load->database();
			$a[$id]=$CI->db->get_where('columns',array('id'=>$id));
			if($a[$id]->num_rows()<1){
				$a[$id]=array();
			}else{
				$a[$id]=$a[$id]->row_array();
			}
		}
		if(isset($a[$id][$column])){
			return $a[$id][$column];
		}
		return '';
	}
}

// 树形数组结构输入
// 栏目列表组织
// list 结构数据
// padding 默认追加的内容
// fn 函数 function($v,$o); $v 为 list 单个信息， $fn_o 为额外内容
function ui_tree($list=false,$fn_o=false,$padding = array()){
	//$option=array('field'=>'','default'=>0)) {

	if (!$list) {
		return "";
	}

	$tree = "";

	foreach ($list as $k => $v) {

		// 追加头部
		$op_header = "";
		// 针对分类-
		if (!isset($v['value'])) {
			$v['value'] = $v['id'];
		}

		$op_header.=implode('', $padding);

		// 如果当序列是最后一个
		if (isset($v['depth']) and $v['depth']) {
			// 如果有下一个
			if (isset($list[$k+1]) and $list[$k+1]['depth'] == $v['depth']) {
					$op_header .= '├';
			} else {
				// 结尾
				$op_header .= '└';
			}
			$op_header .= '';
		}

		if (isset($v['more']) and $v['more']) {
			$op_header .='&nbsp;<span class="fa">&#xf13a;</span>';
		}else{
			$op_header .='&nbsp;<span class="fa">&#xf10c;</span>';
		}

		$v['op_header'] = $op_header;

		// if ($fn !== false) {
			// $tree .= $fn($v,$fn_o);
			$tree.=	'<option title="'.$v['title'].'" value="'.$v['value'].'" '.set_switch($fn_o['field'], $v['value'], $fn_o['default'], ' selected="selected" class="option-select" ','').'>'.$v['op_header'].'&nbsp;'. $v['title'].'</option>';
		// }

		if (isset($v['more']) and is_array($v['more']) ) {
			$p = $padding;
			if (isset($list[$k+1]) and $v['depth']) {
				array_push($p, '│');
			}else{
				if ($v['depth']) {
					array_push($p, '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
				}
			}
			$tree .= ui_tree($v['more'],$fn_o,$p);
		}
	}

	return $tree;

}

function ui_tree_col($list=false,$padding = array()){
	//$option=array('field'=>'','default'=>0)) {

	if (!$list) {
		return "";
	}

	$tree = "";

	foreach ($list as $k => $v) {

		// 追加头部
		$op_header = "";
		// 针对分类-
		if (!isset($v['value'])) {
			$v['value'] = $v['id'];
		}

		$op_header.=implode('', $padding);

		// 如果当序列是最后一个
		if (isset($v['depth']) and $v['depth']) {
			// 如果有下一个
			if (isset($list[$k+1]) and $list[$k+1]['depth'] == $v['depth']) {
					$op_header .= '├';
			} else {
				// 结尾
				$op_header .= '└';
			}
			$op_header .= '';
		}

		if (isset($v['more']) and $v['more']) {
			$op_header .='&nbsp;<span class="fa">&#xf13a;</span>';
		}else{
			$op_header .='&nbsp;<span class="fa">&#xf10c;</span>';
		}

		$v['op_header'] = $op_header;


// center
		$tree.= '<li data-id="'.$v['cid'].'" data-sort="'.$v['csort_id'].'">';
		$tree.= '<span> <input class="select-it" type="checkbox" value="'.$v['cid'].'" > </span>';
		// $tree.= '<span class="label"> '.$v['cid'].'</span>';

		$tree .= $v['op_header'];

		$tree.= ' <a href="'.GLOBAL_URL.'index.php/'.$v['path'].'" target="_blank"> <span> '.$v['ctitle'] .' </span></a> - <span class="label label-success">'.$v['cid'].'</span><span class="label" title="'.$v['path'].'" >'.$v['cidentify'].'</span>';
		if ( ENVIRONMENT == "development") {
			$tree.= '<span class="label label-info">'.$v['temp_index'].'</span><span class="label">'.$v['temp_show'].'</span>' ;;
		}
		$tree.= '<div class="btn-group pull-right">';
		if ($v['cshow']){
			$tree .= '<a href="#" class="btn btn-primary btn-small btn-ajax-show" data-id="'.$v['cid'].'" data-show="0">  <i class="fa fa-eye"></i></a>';
		}else{
			$tree .='<a href="#" class="btn btn-small btn-ajax-show" data-id="'.$v['cid'].'" data-show="1"> <i class="fa fa-eye-slash"></i></a>';
		}
		$tree.= '<a class="btn btn-small" href="'.site_url('columns/edit/'.$v['cid']).' " title="'.lang('edit').'"> <i class="fa fa-pencil"></i> </a>';
		$tree.= '<a class="btn btn-small" href="'.site_url('coltypes/index/').'?c='.$v['cid'].'&field=ctype&rc='.$v['controller'].' " title="分类管理"> <i class="fa fa-magnet "></i> </a>';
		$tree.= '<a class="btn btn-danger btn-small btn-del" href="#" title="'.lang('del').'" data-id="'.$v['cid'].'"> <i class="fa fa-times"></i> </a>';
		$tree.= '</div>';
		$tree.= '</li>';
// end center;

		if (isset($v['more']) and is_array($v['more']) ) {
			$p = $padding;
			if (isset($list[$k+1]) and $v['depth']) {
				array_push($p, '│');
			}else{
				if ($v['depth']) {
					array_push($p, '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
				}
			}
			$tree .= ui_tree_col($v['more'],$p);
		}
	}

	return $tree;

}

// 类型列表
function ui_tree_coltypes($list=false,$padding = array()){
	//$option=array('field'=>'','default'=>0)) {

	if (!$list) {
		return "";
	}

	$tree = "";

	foreach ($list as $k => $v) {

		// 追加头部
		$op_header = "";
		// 针对分类-
		if (!isset($v['value'])) {
			$v['value'] = $v['id'];
		}

		$op_header.=implode('', $padding);

		// 如果当序列是最后一个
		if (isset($v['depth']) and $v['depth']) {
			// 如果有下一个
			if (isset($list[$k+1]) and $list[$k+1]['depth'] == $v['depth']) {
					$op_header .= '├';
			} else {
				// 结尾
				$op_header .= '└';
			}
			$op_header .= '';
		}

		if (isset($v['more']) and $v['more']) {
			$op_header .='&nbsp;<span class="fa">&#xf13a;</span>';
		}else{
			$op_header .='&nbsp;<span class="fa">&#xf10c;</span>';
		}

		$v['op_header'] = $op_header;

		// center
		$tree.= '<li data-id="'.$v['id'].'" data-sort="'.$v['sort_id'].'">';
		$tree.= '<span> <input class="select-it" type="checkbox" value="'.$v['id'].'" > </span>';

		$tree .= $v['op_header'];

		$tree.= '<span> '.$v['title'] .' </span>';
		if ( ENVIRONMENT == "development") {
			$tree.= '<span class="label label-info"> '.$v['id'].'</span>';
		}
		$tree.= '<div class="btn-group pull-right">';
		$tree.= '<a class="btn btn-small" href="'.site_urlc('coltypes/edit/'.$v['id']).' " title="'.lang('edit').'"> <i class="fa fa-pencil"></i> </a>';
		$tree.= '<a class="btn btn-danger btn-small btn-del" href="#" title="'.lang('del').'" data-id="'.$v['id'].'"> <i class="fa fa-times"></i> </a>';
		$tree.= '</div>';
		$tree.= '</li>';
		// end center;

		if (isset($v['more']) and is_array($v['more']) ) {
			$p = $padding;
			if (isset($list[$k+1]) and $v['depth']) {
				array_push($p, '│');
			}else{
				if ($v['depth']) {
					array_push($p, '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;');
				}
			}
			$tree .= ui_tree_coltypes($v['more'],$p);
		}
	}

	return $tree;

}
// 获取分类名称
if(!function_exists('ui_btns_type'))
{
	function ui_btns_type($id,$column='title')
	{
		static $a=array();
		$id=intval($id);
		if(!isset($a[$id])){
			$CI=&get_instance();
			$CI->load->database();
			$a[$id]=$CI->db->get_where('coltypes',array('id'=>$id));
			if($a[$id]->num_rows()<1){
				$a[$id]=array();
			}else{
				$a[$id]=$a[$id]->row_array();
			}
		}
		if(isset($a[$id][$column])){
			return $a[$id][$column];
		}
		return '';
	}
}
