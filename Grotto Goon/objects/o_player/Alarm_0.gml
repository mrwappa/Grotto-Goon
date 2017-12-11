/// @description Insert description here
// You can write your code in this editor
with(GrabbableObject)
{
   current_state = GrabbedState;
}
if instance_exists(WieldingObject)
{
    with(WieldingObject)
    {
        current_state = NormalState;
    }
}
current_state = state.Grabbing;
