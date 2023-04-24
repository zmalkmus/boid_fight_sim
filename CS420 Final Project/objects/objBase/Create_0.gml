hp = global.base_hp;
max_hp = global.base_hp;

base = object_index;

if (base == objBlueBase) team = objBlue;
else if (base == objRedBase) team = objRed;

alarm[0] = global.heal_rate;