.class public Lvendor/qti/iwlan/AsyncResult;
.super Ljava/lang/Object;
.source "AsyncResult.java"


# instance fields
.field public exception:Ljava/lang/Throwable;

.field public result:Ljava/lang/Object;

.field public userObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "uo"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "ex"    # Ljava/lang/Throwable;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lvendor/qti/iwlan/AsyncResult;->userObj:Ljava/lang/Object;

    .line 71
    iput-object p2, p0, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    .line 72
    iput-object p3, p0, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 73
    return-void
.end method

.method public static forMessage(Landroid/os/Message;)Lvendor/qti/iwlan/AsyncResult;
    .locals 3
    .param p0, "m"    # Landroid/os/Message;

    .line 59
    new-instance v0, Lvendor/qti/iwlan/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lvendor/qti/iwlan/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 61
    .local v0, "ret":Lvendor/qti/iwlan/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 63
    return-object v0
.end method

.method public static forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lvendor/qti/iwlan/AsyncResult;
    .locals 2
    .param p0, "m"    # Landroid/os/Message;
    .param p1, "r"    # Ljava/lang/Object;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 46
    new-instance v0, Lvendor/qti/iwlan/AsyncResult;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lvendor/qti/iwlan/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 48
    .local v0, "ret":Lvendor/qti/iwlan/AsyncResult;
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    return-object v0
.end method
