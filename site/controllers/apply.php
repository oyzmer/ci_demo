<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class apply extends MY_Controller {

    protected $rules = array(
        "submit" => array(
            array(
                'field' => 'name',
                'label' => '姓名',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'gender',
                'label' => '性别',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'marriage',
                'label' => '婚姻状况',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'email',
                'label' => 'E-mail',
                'rules' => 'trim|required|strtolower|valid_email'
            )
            ,array(
                'field' => 'nation',
                'label' => '民族',
                'rules' => 'trim|xss_clean'
            )
            ,array(
                'field' => 'age',
                'label' => '年龄',
                'rules' => 'intval|required|numeric'
            )
            ,array(
                'field' => 'politic',
                'label' => '政治面貌',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'birthplace',
                'label' => '籍贯',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'edu',
                'label' => '文化程度',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'school',
                'label' => '毕业学校',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'major',
                'label' => '专业',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'graduation',
                'label' => '毕业时间',
                'rules' => 'trim|required|xss_clean'
            )
            ,array(
                'field' => 'language',
                'label' => '外语水平',
                'rules' => 'trim|xss_clean'
            )
            ,array(
                'field' => 'position',
                'label' => '应聘职位',
                'rules' => 'trim|xss_clean'
            )
            ,array(
                'field' => 'recruit_id',
                'rules' => 'intval|numeric'
            )
            ,array(
                'field' => 'tel',
                'label' => '联系电话',
                'rules'   => 'trim|required|numeric|is_mobile'
            )
            ,array(
                'field' => 'content',
                'label' => '个人简历',
                'rules' => 'trim|required|max_length[1000]|xss_clean'
            )
        )
    );

    function __construct(){
        parent::__construct();
        $this->load->model('apply_model','model');
    }
   

    public function index(){
        $this->form_validation->set_rules($this->rules['submit']);
        $vdata['CI'] = $this;
        $vdata['header'] = array(
            'title'=> "在线应聘"
            ,'tags'=> get_config_site('site','tags')
            ,'intro' => get_config_site('site','intro')
         );
        if ($this->form_validation->run() == false) {
            $vdata['status']= -1;
            $rid = $this->input->post('rid');
            $vdata['msg'] = validation_errors();
            print_r(validation_errors());die;
            redirect(site_url('apply/'.$rid));
        } else {
            $vdata['status']= -1;
            $data = $this->input->post();
            $rid = $this->input->post('rid');
            
            $data['timeline'] = time();
            $data['type_id'] = $this->input->post('cid');
            $data['ip'] = get_ip();
            unset($data['captchas']);
            unset($data['rid']);
            unset($data['cid']);
            $upfile='userfile';
            if(isset($_FILES[$upfile]['name'])&&strlen($_FILES[$upfile]['name'])>1){
                $config['upload_path'] = UPLOAD_PATH.'/resume/';
                $config['allowed_types'] = 'doc|docx|xls|xlsx|zip|rar|pdf';
                $config['max_size'] = '0';
                $config['max_width']  = '0';
                $config['max_height']  = '0';
                $config['file_name']  = time();
                $this->load->library('upload', $config);
                if(!$this->upload->do_upload($upfile))
                {
                    $vdata['msg'] = '文件上传格式或过大，请刷新后重试';
                    $vdata['status'] = -1;  
                    $error = array('error' => $this->upload->display_errors());
                    goto_message($vdata['msg'],'apply/'.$rid);
                } else {
                    $picdata = array('upload_data' => $this->upload->data());
                    $data['file']="resume/".$picdata['upload_data']['file_name'];
                }
            } 

            if($insert_id = $this->model->create($data)){
                $vdata['msg'] = '提交成功，我们会尽快回复您！';
                $vdata['status'] = 1;
                $vdata['id'] = $insert_id;
                goto_message($vdata['msg'],'job');
            }else{
                $vdata['msg'] = '提交失败';
                $vdata['status'] = 0;
                goto_message($vdata['msg'],'job');
            }
           
        }
        $this->load->view('apply',$vdata);
    }
}
