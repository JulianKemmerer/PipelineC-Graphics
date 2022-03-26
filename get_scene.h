#ifdef __PIPELINEC__
scene_t scene_wire;
#include "clock_crossing/scene_wire.h"
#pragma ASYNC_WIRE scene_wire
scene_t get_scene()
{
  scene_t rv;
  WIRE_READ(scene_t, rv, scene_wire)
  return rv;
}
/* Read state wire to look like func args
scene_t scene = get_scene();
sphere_t sphere = scene.sphere;
plane_t plane = scene.plane;
uint16_t frame = scene.frame;
scene_colors_t scene_colors = scene_colors(scene);*/
#endif // PIPELINEC