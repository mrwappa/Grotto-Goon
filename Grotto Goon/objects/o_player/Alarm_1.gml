/// @description Insert description here
// You can write your code in this editor
with(WieldingObject)
{
   current_state = GrabbedState;
}
if instance_exists(GrabbableObject)
{
    with(GrabbableObject)
    {
        current_state = NormalState;
    }
}
current_state = state.Wielding;
