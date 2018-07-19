<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $model=M("msg");
        if(IS_POST){
            /*是否为搜索过来的*/
           if(I("post.formone")){
            $startTime=strtotime(I("post.statrTime"));
            $endTime=strtotime(I("post.endTime"));
            if($endTime>time()){
                $this->error("你超越了,结束时间不能大于现在的时间???");
                exit;
            }
            if($endTime<$statrTime){
               $this->error("结束时间不能开始时间");
                exit;
            }
            $result=$model->where("created_at > $startTime  and created_at < $endTime" )->order(array('id'=>'desc'))->select();
            $this->assign("result",$result);
            $this->display();die;
           }else{
            $date['uname'] = I('post.uname');
            $date['content'] = I('post.content');
            $date['created_at']=time();
            $date['updated_at']=time();
            if($model->add($date)){
                $this->success("留言成功！",U("Index/index"));
                exit;
            }else{
                $this->error("留言失败，请联系管理员");
            }
           }
        }

        $result=$model->order(array('id'=>'desc'))->select();
        $this->assign("result",$result);
        $this->display();
    }
}
