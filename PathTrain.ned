//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
//
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Delay;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;


//
// TODO documentation
//
network Network
{
    @display("bgb=1048.098,723.768");
    submodules:
        source: Source {
            @display("p=49,54");
        }
        server: Server {
            @display("p=152.49199,264.016;t=Hoboken");
        }
        server1: Server {
            @display("p=151.35399,598.588;t=Christopher St");
        }
        server2: Server {
            @display("p=278.81,377.81598;t=9th St");
        }
        server3: Server {
            @display("p=268.568,53.486;t=14th St");
        }
        server4: Server {
            @display("p=403.99,264.016;t=23rd St");
        }
        server5: Server {
            @display("p=403.99,598.588;t=33rd St");
        }
        server6: Server {
            @display("p=535.998,377.81598;t=23rd St");
        }
        server7: Server {
            @display("p=525.756,53.486;t=14th St");
        }
        server8: Server {
            @display("p=657.764,264.016;t=9th St");
        }
        server9: Server {
            @display("p=657.764,598.588;t=Christopher St");
        }
        server10: Server {
            @display("p=785.22,377.81598;t=Hoboken");
        }
        queue: PassiveQueue {
            @display("p=152,54");
        }
        queue1: PassiveQueue {
            @display("p=152.49199,377.81598");
        }
        queue2: PassiveQueue {
            @display("p=279.948,598.588");
        }
        queue3: PassiveQueue {
            @display("p=279.948,264.016");
        }
        queue4: PassiveQueue {
            @display("p=401.714,53.486");
        }
        queue5: PassiveQueue {
            @display("p=403.99,377.81598");
        }
        queue6: PassiveQueue {
            @display("p=537.136,598.588");
        }
        queue7: PassiveQueue {
            @display("p=537.136,264.016");
        }
        queue8: PassiveQueue {
            @display("p=655.488,53.486");
        }
        queue9: PassiveQueue {
            @display("p=657.764,377.81598");
        }
        queue10: PassiveQueue {
            @display("p=786.358,598.588");
        }
        sink: Sink {
            @display("p=897.88196,377.81598");
        }
        delay: Delay {
            @display("p=151.35399,155.90599");
        }
        delay1: Delay {
            @display("p=152.49199,474.546");
        }
        delay2: Delay {
            @display("p=279.948,474.546");
        }
        delay3: Delay {
            @display("p=278.81,155.90599");
        }
        delay4: Delay {
            @display("p=402.852,155.90599");
        }
        delay5: Delay {
            @display("p=403.99,474.546");
        }
        delay6: Delay {
            @display("p=537.136,474.546");
        }
        delay7: Delay {
            @display("p=535.998,155.90599");
        }
        delay8: Delay {
            @display("p=656.626,155.90599");
        }
        delay9: Delay {
            @display("p=657.764,474.546");
        }
        delay10: Delay {
            @display("p=786.358,474.546");
        }
    connections:
        server4.out --> queue5.in++;
        server5.out --> queue6.in++;
        server6.out --> queue7.in++;
        server7.out --> queue8.in++;
        server8.out --> queue9.in++;
        server9.out --> queue10.in++;

        queue1.out++ --> delay1.in++;
        delay1.out --> server1.in++;
        queue.out++ --> delay.in++;
        delay.out --> server.in++;
        queue2.out++ --> delay2.in++;
        delay2.out --> server2.in++;
        queue3.out++ --> delay3.in++;
        delay3.out --> server3.in++;
        queue4.out++ --> delay4.in++;
        delay4.out --> server4.in++;
        queue5.out++ --> delay5.in++;
        delay5.out --> server5.in++;
        queue6.out++ --> delay6.in++;
        delay6.out --> server6.in++;
        queue7.out++ --> delay7.in++;
        delay7.out --> server7.in++;
        queue8.out++ --> delay8.in++;
        queue9.out++ --> delay9.in++;
        delay9.out --> server9.in++;
        queue10.out++ --> delay10.in++;
        delay10.out --> server10.in++;
        source.out --> queue.in++;
        server10.out --> sink.in++;
        server.out --> queue1.in++;
        server3.out --> queue4.in++;
        server2.out --> queue3.in++;
        server1.out --> queue2.in++;
        delay8.out --> server8.in++;
}

