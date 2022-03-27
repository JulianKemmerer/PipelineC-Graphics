#ifdef __PIPELINEC__
full_state_t state_wire;
#include "clock_crossing/state_wire.h"
#pragma ASYNC_WIRE state_wire
scene_t get_scene()
{
  scene_t rv;
  WIRE_READ(scene_t, rv, state_wire.scene)
  return rv;
}
/* Read state wire to look like func args
scene_t scene = get_scene();
sphere_t sphere = scene.sphere;
plane_t plane = scene.plane;
uint16_t frame = scene.frame;
scene_colors_t scene_colors = scene_colors(scene);*/
#endif // PIPELINEC