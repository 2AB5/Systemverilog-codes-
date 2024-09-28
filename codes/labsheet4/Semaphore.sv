/*
 Module - Semaphores
 19ECE347 - ELECTRONIC SYSTEM LEVEL DESIGN AND VERIFICATION ~ ASSIGNMENT 5 labsheet#4
 Roll no - CB.EN.U4ECE20101
 Change history: 17/11/23 - V1.0 - Initial working version created (owner: Abinav Balachandar - CB.EN.U4ECE20101)
*/

program automatic test(bus_ifc.TB bus);
    semaphore sem;
    intial begin
        sem = new(1);
        fork
            sequencer();
            sequencer();
        join
    end

    task sequencer();
    repeat($urandom()%10)
        @bus.cb;
        sendTrans();
    endtask

    task sendTrans();
    sem.get(1);
    @bus.cb;
    bus.cb.addr <= tr.addr;
    sem.put(1);
    endtask
endprogram