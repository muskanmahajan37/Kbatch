# Batch on GKE
## Scripts, Tools and Sample Jobs

High performance, high throughput and technical batch computing are all about
scale and speed. Many applications, such as drug discovery and genomics, 
financial services and image processing require access to a large and diverse 
set of computing resources on demand. With more and faster computing power, you 
can convert an idea into a discovery, a hypothesis into a cure or an 
inspiration into a product. Google Cloud provides customers with flexible, 
on-demand access to large amounts of cutting edge high-performance resources 
with Compute Engine.
 
Batch on GKE is a cloud native solution for managing HPC, HTC and batch workloads in
a way that is optimized for virtual cloud resources yet is portable and works 
on-premises as well. With the introduction of Batch on GKE, we seek to work with the
community to define a new way to do batch computing that is cloud optimized, 
open, standard and portable.

This Beta release focuses on bringing traditional batch scheduler functionality 
into a cloud-first world: creating and managing queues, submitting jobs, etc. 
To the end-user Batch on GKE presents a familiar interface that supports
well-understood batch concepts, including

* Queues with priorities
* Jobs that can be added to Queues
* Job dependencies
* The ability to easily specify resources required by a job (CPU, memory)
* Support for submitting shell scripts as batch jobs

This repository contains scripts, tools and sample jobs for use with Batch on GKE.

For more information about Batch on GKE, see
* https://cloud.google.com/kubernetes-engine/docs/how-to/batch/managing-clusters
* https://cloud.google.com/kubernetes-engine/docs/concepts/batch

You can go to [google-batch-discuss](https://groups.google.com/d/forum/google-batch-discuss)
to reach out to Googlers and the community for assistance.
