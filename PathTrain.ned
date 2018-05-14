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

import org.omnetpp.queueing.Clone;
import org.omnetpp.queueing.PassiveQueue;
import org.omnetpp.queueing.Delay;
import org.omnetpp.queueing.Queue;
import org.omnetpp.queueing.Server;
import org.omnetpp.queueing.Sink;
import org.omnetpp.queueing.Source;
import Clone_New;
//import org.omnetpp.queueing.Clone;

//
// TODO documentation
//
network Network
{
    @display("bgb=1432.19,1078.868");
    submodules:
        source: Source {
            @display("p=77.062,78.516");
        }
        server: Server {
            @display("p=180.296,375.132;t=Hoboken");
        }
        server1: Server {
            @display("p=180.296,884.032;t=Christopher St");
        }
        server2: Server {
            @display("p=372.224,540.888;t=9th St");
        }
        server3: Server {
            @display("p=372.224,78.516;t=14th St");
        }
        server4: Server {
            @display("p=552.52,375.132;t=23rd St");
        }
        server5: Server {
            @display("p=552.52,884.032;t=33rd St");
        }
        server6: Server {
            @display("p=756.08,540.888;t=23rd St");
        }
        server7: Server {
            @display("p=756.08,78.516;t=14th St");
        }
        server8: Server {
            @display("p=971.272,375.132;t=9th St");
        }
        server9: Server {
            @display("p=971.272,884.032;t=Christopher St");
        }
        server10: Server {
            @display("p=1173.378,540.888;t=Hoboken");
        }
        queue: PassiveQueue {
            @display("p=180.296,216.646");
        }
        queue1: PassiveQueue {
            @display("p=180.296,716.822");
        }
        queue2: PassiveQueue {
            @display("p=372.224,716.822");
        }
        queue3: PassiveQueue {
            @display("p=372.224,216.646");
        }
        queue4: PassiveQueue {
            @display("p=552.52,216.646");
        }
        queue5: PassiveQueue {
            @display("p=552.52,716.822");
        }
        queue6: PassiveQueue {
            @display("p=756.08,716.822");
        }
        queue7: PassiveQueue {
            @display("p=756.08,216.646");
        }
        queue8: PassiveQueue {
            @display("p=971.272,216.646");
        }
        queue9: PassiveQueue {
            @display("p=971.272,716.822");
        }
        queue10: PassiveQueue {
            @display("p=1173.378,716.822");
        }
        sink: Sink {
            @display("p=1347.858,375.132");
        }
        delay: Delay {
            @display("p=180.296,78.516");
        }
        delay1: Delay {
            @display("p=180.296,540.888");
        }
        delay2: Delay {
            @display("p=372.224,884.032");
        }
        delay3: Delay {
            @display("p=372.224,375.132");
        }
        delay4: Delay {
            @display("p=552.52,78.516");
        }
        delay5: Delay {
            @display("p=552.52,540.888");
        }
        delay6: Delay {
            @display("p=756.08,884.032");
        }
        delay7: Delay {
            @display("p=756.08,375.132");
        }
        delay8: Delay {
            @display("p=971.272,78.516");
        }
        delay9: Delay {
            @display("p=971.272,540.888");
        }
        delay10: Delay {
            @display("p=1173.378,884.032");
        }
        clone: Clone {
            @display("p=1173.378,375.132");
        }
    connections:
        //        server4.out --> queue5.in++;
        //        server5.out --> queue6.in++;
        //        server6.out --> queue7.in++;
        //        server7.out --> queue8.in++;
        //        server8.out --> queue9.in++;
        //        server9.out --> queue10.in++;
        //
        //        queue1.out++ --> delay1.in++;
        //        delay1.out --> server1.in++;
        //        
        //        queue2.out++ --> delay2.in++;
        //        delay2.out --> server2.in++;
        //        queue3.out++ --> delay3.in++;
        //        delay3.out --> server3.in++;
        //        queue4.out++ --> delay4.in++;
        //        delay4.out --> server4.in++;
        //        queue5.out++ --> delay5.in++;
        //        delay5.out --> server5.in++;
        //        queue6.out++ --> delay6.in++;
        //        delay6.out --> server6.in++;
        //        queue7.out++ --> delay7.in++;
        //        delay7.out --> server7.in++;
        //        queue8.out++ --> delay8.in++;
        //        queue9.out++ --> delay9.in++;
        //        delay9.out --> server9.in++;
        //        queue10.out++ --> delay10.in++;
        //        delay10.out --> server10.in++;
        //        
        //        server10.out --> sink.in++;
        //        server.out --> queue1.in++;
        //        server3.out --> queue4.in++;
        //        server2.out --> queue3.in++;
        //        server1.out --> queue2.in++;
        //        delay8.out --> server8.in++;
        //
        //		delay.out --> server.in++;
        //        queue.out++ --> delay.in++;
        //        source.out --> queue.in++;

        server8.out --> delay9.in++;
        delay9.out --> queue9.in++;
        queue9.out++ --> server9.in++;
        queue10.out++ --> server10.in++;
        delay10.out --> queue10.in++;
        server9.out --> delay10.in++;

        queue8.out++ --> server8.in++;
        delay8.out --> queue8.in++;
        server7.out --> delay8.in++;

        queue7.out++ --> server7.in++;
        delay7.out --> queue7.in++;
        server6.out --> delay7.in++;

        queue6.out++ --> server6.in++;
        delay6.out --> queue6.in++;
        server5.out --> delay6.in++;

        queue5.out++ --> server5.in++;
        delay5.out --> queue5.in++;
        server4.out --> delay5.in++;

        queue4.out++ --> server4.in++;
        delay4.out --> queue4.in++;
        server3.out --> delay4.in++;

        queue3.out++ --> server3.in++;
        delay3.out --> queue3.in++;
        server2.out --> delay3.in++;

        queue2.out++ --> server2.in++;
        delay2.out --> queue2.in++;
        server1.out --> delay2.in++;

        queue1.out++ --> server1.in++;
        delay1.out --> queue1.in++;
        server.out --> delay1.in++;

        queue.out++ --> server.in++;
        delay.out --> queue.in++;
        source.out --> delay.in++;

        server10.out --> sink.in++;
}


