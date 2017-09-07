<?php
/**
 * basemodel 公共的model层
 */
namespace app\common\model;

use think\Model;

class BaseModel extends Model
{
    protected  $autoWriteTimestamp = true;
    public function add($data) {
        $data['status'] = 0;
        $this->save($data);
        return $this->id;
    }

    public function updateById($data, $id) {
        return $this->allowField(true)->save($data, ['id'=>$id]);
    }


}