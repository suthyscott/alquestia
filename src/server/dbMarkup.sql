characters {
	id integer pk increments
	player_id integer >* player.id
	char_name string
	char_desc integer
	race_id string >* races.id
	speed integer
	deftness integer
	brawn integer
	hardiness integer
	savvy integer
	acumen integer
	empathy integer
}

races {
	id integer pk increments unique
	race_name integer
	size integer >* creature_sizes.id
}

creature_sizes {
	id integer pk
	tiny integer
	small integer
	medium integer
	large integer
	huge integer
	massive integer
}

creatures {
	id integer pk increments unique
	creature_name integer
	creature_desc integer
	 integer
	creature_size_id integer > creature_sizes.id
}

items {
	id integer pk increments unique
	item_name integer
	cat_id integer >* item_category.id
}

item_category {
	id integer pk increments unique
	cat_name integer
	cat_desc integer
}

inventory {
	id integer pk increments unique
	char_id integer *>* characters.id
	item_id integer *>* items.id
}
fields {
	id integer pk increments unique
	field_name integer
}

sub_field {
	id integer pk increments unique
	sub_field_name integer
	field_id integer >* fields.id
}

char_sub_fields {
	id integer pk increments unique
	sub_field_id integer >* sub_field.id
	char_id integer >* characters.id
	sub_field_exp_points integer
	field_exp_points integer
}

char_fields {
	id integer pk increments unique
	char_id integer >* characters.id
	field_id integer >* fields.id
	exp_points integer
}


player {
	id integer pk increments unique
	username integer
	hashedPass integer
	highest_level_achieved integer
}

