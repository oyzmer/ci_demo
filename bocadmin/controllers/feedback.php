<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class Help extends CI_Controller 
 * 反馈信息
 * @author 
 */
class Feedback extends CRUD_Controller
{
	protected $rules = array(
		"edit" => array(
			array(
				"field" => "timeline_answer",
				"label" => "回复时间",
				"rules" => "trim|strtotime"
			)
		)
	);

	protected function _index_orders(){
		return array('sort_id'=>'desc');
	}
}