		control.paramSpeed(100, 100, 100, 500, 500, 0, 0, 0);
		control.moveCartL(-261.64, 349.51, 50, -180, 0, 0);
		control.moveCartL(-261.64, 349.51, -200, -180, 0, 0);
		control.paramSpeed(50, 50, 50, 100, 100, 0, 0, 0);
		control.moveCartL(-261.64, 349.51, -339.87, -180, 0, 0);
		control.doTool(1);
		std::this_thread::sleep_for (std::chrono::seconds(2));
		std::cout << "UN" << std::endl;
		//std::cout << etat._isSettled << std::endl;
		while (state._isSettled != 1 && ros::ok())
		{
			//std::this_thread::sleep_for (std::chrono::milliseconds(10));
			//std::cout << state._isSettled << std::endl;
		}
		std::cout << "DEUX" << std::endl;
		control.moveCartL(-261.64, 349.51, -200, -180, 0, 0);
		while (state._isSettled != 0 && ros::ok())
		{
			std::this_thread::sleep_for (std::chrono::milliseconds(10));
		}
		std::cout << "TROIS" << std::endl;
		control.paramSpeed(100, 100, 100, 500, 500, 2, 50, 100);
		control.moveCartL(-261.64, 349.51, 50, -180, 0, 0);
		control.paramSpeed(100, 100, 100, 500, 500, 2, 100, 50);
		control.moveCartL(26.49, 329.30, 50, -180, 0, 0);
		control.paramSpeed(100, 100, 100, 500, 500, 0, 0, 0);
		control.moveCartL(26.49, 329.30, -100, -180, 0, 0);
		control.paramSpeed(50, 50, 50, 100, 100, 0, 0, 0);
		control.moveCartL(26.49, 329.30, -143.28, -180, 0, 0);
		control.doTool(0);
		std::this_thread::sleep_for (std::chrono::seconds(2));
		while (state._isSettled != 1 && ros::ok())
		{
			std::this_thread::sleep_for (std::chrono::milliseconds(10));
		}
		control.moveCartL(26.49, 329.30, -100, -180, 0, 0);
		while (state._isSettled != 0 && ros::ok())
		{
			std::this_thread::sleep_for (std::chrono::milliseconds(10));
		}
