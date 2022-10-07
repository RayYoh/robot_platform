import rospy
import rospkg
import yaml
import numpy
rospack = rospkg.RosPack()

def import_limb():
    print('=========base: import_limb=========')
    import limb_py.limb as _limb
    return _limb


class Base():
    def input_init(self, task_name, meta_name):
        meta_ros_service_path = rospack.get_path(meta_name) + '/config/'
        file_name = meta_ros_service_path + task_name + '.yaml'
        yaml_file = open(file_name)
        input = yaml.load(yaml_file, Loader=yaml.FullLoader)
        return input

    def list2Numpy(self, l=list()):
        input_float = [float(i) for i in l]
        output = numpy.ndarray(shape=[len(l), 1], buffer=numpy.array(input_float))
        return output

    def numpy2List(self, e=numpy.ndarray):
        temp = numpy.array(e).tolist()
        output = [i[0] for i in temp]
        return output