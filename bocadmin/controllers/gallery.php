<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class gallery extends CI_Controller
 * @author
 * 信息类
 */
class Gallery extends Modules_Controller
{

    function __construct()
    {
        parent::__construct();

        $this->rules = array(
            "rule" => array(
                array(
                    "field" => "title",
                    "label" => lang('title'),
                    "rules" => "trim|required|min_length[6]"
                )
                ,array(
                    "field" => "timeline",
                    "label" => lang('time'),
                    "rules" => "trim|strtotime"
                )
            )
        );

    }
    public function copypro()
    {
        $ids = $this->input->post('ids');
       
        $rs=$this->model->get_one($ids);

        unset($rs['id']);
        unset($rs['sort_id']);
        unset($rs['timeline']);
        
        $id = $this->model->create($rs);
        if ($id) {
            $vdata['msg'] = '复制成功，请刷新查看';
            $vdata['status'] = 1;
        }else{
            $vdata['msg'] = '复制失败，请刷新后重试';
            $vdata['status'] = 0;
        }
        $this->output->set_content_type('application/json')->set_output(json_encode($vdata));
    }

}
