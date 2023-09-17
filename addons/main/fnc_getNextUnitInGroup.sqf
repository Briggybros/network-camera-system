// Fnc to find the next unit in a squad
// params:
// - _currentUnit: the unit to find the next unit from

params ["_currentUnit"];

// Get all units in the current units group
private _units = units _currentUnit;

// Base case, we're going to select the first unit in this group
private _nextUnit = _units select 0;

// True if we're going to select the next unit we see
private _next = false;

// Find the position of the current unit in the group, set _next to true and then set the next unit
{
	if (_next) then {
		_nextUnit = _x;
		break;
	};

	if (_x == _currentUnit) then {
		_next = true;
	};
} foreach _units;

_nextUnit;