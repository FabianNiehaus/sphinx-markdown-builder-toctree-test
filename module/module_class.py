"""
A module class file.
"""
from module.submodule.submodule_class import SubmoduleClass


class ModuleClass:
    """
    A class inside a module.
    """

    def __init__(self):
        """Initialize a module class object
        """
        self.submodule_class = SubmoduleClass()

    def function(self, param1: int, param2: str) -> None:
        """Do nothing

        This is a dummy function that does not do anything.
        :param param1: Does nothing
        :type param1: int
        :param param2: Does nothing as well
        :type param2: str
        :return: Nothing.
        :rtype: None
        """
        self.submodule_class.function(param1, param2)
