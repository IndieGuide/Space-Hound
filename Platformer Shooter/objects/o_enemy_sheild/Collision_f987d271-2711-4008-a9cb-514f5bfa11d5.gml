health_ -= other.damage;
instance_destroy(other);

if (health_ <= 0) {
	instance_destroy();
}