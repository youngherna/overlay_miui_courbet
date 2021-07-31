.class public Lvendor/qti/iwlan/Registrant;
.super Ljava/lang/Object;
.source "Registrant.java"


# instance fields
.field refH:Ljava/lang/ref/WeakReference;

.field userObj:Ljava/lang/Object;

.field what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvendor/qti/iwlan/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 37
    iput p2, p0, Lvendor/qti/iwlan/Registrant;->what:I

    .line 38
    iput-object p3, p0, Lvendor/qti/iwlan/Registrant;->userObj:Ljava/lang/Object;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/iwlan/Registrant;->refH:Ljava/lang/ref/WeakReference;

    .line 45
    iput-object v0, p0, Lvendor/qti/iwlan/Registrant;->userObj:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 119
    iget-object v0, p0, Lvendor/qti/iwlan/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 78
    invoke-virtual {p0}, Lvendor/qti/iwlan/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 80
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lvendor/qti/iwlan/Registrant;->clear()V

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 85
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lvendor/qti/iwlan/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 87
    new-instance v2, Lvendor/qti/iwlan/AsyncResult;

    iget-object v3, p0, Lvendor/qti/iwlan/Registrant;->userObj:Ljava/lang/Object;

    invoke-direct {v2, v3, p1, p2}, Lvendor/qti/iwlan/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method

.method public messageForRegistrant()Landroid/os/Message;
    .locals 3

    .line 100
    invoke-virtual {p0}, Lvendor/qti/iwlan/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 102
    .local v0, "h":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lvendor/qti/iwlan/Registrant;->clear()V

    .line 105
    const/4 v1, 0x0

    return-object v1

    .line 107
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 109
    .local v1, "msg":Landroid/os/Message;
    iget v2, p0, Lvendor/qti/iwlan/Registrant;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 110
    iget-object v2, p0, Lvendor/qti/iwlan/Registrant;->userObj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    return-object v1
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lvendor/qti/iwlan/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public notifyRegistrant()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lvendor/qti/iwlan/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public notifyRegistrant(Lvendor/qti/iwlan/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lvendor/qti/iwlan/AsyncResult;

    .line 72
    iget-object v0, p1, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v1}, Lvendor/qti/iwlan/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lvendor/qti/iwlan/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method
