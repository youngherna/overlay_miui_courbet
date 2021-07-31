.class public Lvendor/qti/iwlan/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field registrants:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "exception"    # Ljava/lang/Throwable;

    monitor-enter p0

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    iget-object v2, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/iwlan/Registrant;

    .line 84
    .local v2, "r":Lvendor/qti/iwlan/Registrant;
    invoke-virtual {v2, p1, p2}, Lvendor/qti/iwlan/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v2    # "r":Lvendor/qti/iwlan/Registrant;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    .end local v1    # "s":I
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    :cond_0
    monitor-exit p0

    return-void

    .line 81
    .end local p1    # "result":Ljava/lang/Object;
    .end local p2    # "exception":Ljava/lang/Throwable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized add(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 37
    :try_start_0
    new-instance v0, Lvendor/qti/iwlan/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lvendor/qti/iwlan/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lvendor/qti/iwlan/RegistrantList;->add(Lvendor/qti/iwlan/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lvendor/qti/iwlan/Registrant;)V
    .locals 1
    .param p1, "r"    # Lvendor/qti/iwlan/Registrant;

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lvendor/qti/iwlan/RegistrantList;->removeCleared()V

    .line 52
    iget-object v0, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 50
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    .end local p1    # "r":Lvendor/qti/iwlan/Registrant;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    monitor-enter p0

    .line 44
    :try_start_0
    invoke-virtual {p0, p1}, Lvendor/qti/iwlan/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 45
    new-instance v0, Lvendor/qti/iwlan/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lvendor/qti/iwlan/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lvendor/qti/iwlan/RegistrantList;->add(Lvendor/qti/iwlan/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 43
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    .end local p1    # "h":Landroid/os/Handler;
    .end local p2    # "what":I
    .end local p3    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 76
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lvendor/qti/iwlan/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public notifyRegistrants()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lvendor/qti/iwlan/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public notifyRegistrants(Lvendor/qti/iwlan/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lvendor/qti/iwlan/AsyncResult;

    .line 110
    iget-object v0, p1, Lvendor/qti/iwlan/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Lvendor/qti/iwlan/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Lvendor/qti/iwlan/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lvendor/qti/iwlan/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public declared-synchronized remove(Landroid/os/Handler;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;

    monitor-enter p0

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_0
    iget-object v1, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "s":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 117
    iget-object v2, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/iwlan/Registrant;

    .line 120
    .local v2, "r":Lvendor/qti/iwlan/Registrant;
    invoke-virtual {v2}, Lvendor/qti/iwlan/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 125
    .local v3, "rh":Landroid/os/Handler;
    if-eqz v3, :cond_0

    if-ne v3, p1, :cond_1

    .line 126
    :cond_0
    invoke-virtual {v2}, Lvendor/qti/iwlan/Registrant;->clear()V

    .line 116
    .end local v2    # "r":Lvendor/qti/iwlan/Registrant;
    .end local v3    # "rh":Landroid/os/Handler;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    .end local v1    # "s":I
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    :cond_2
    invoke-virtual {p0}, Lvendor/qti/iwlan/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 115
    .end local p1    # "h":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCleared()V
    .locals 3

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 59
    iget-object v1, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/iwlan/Registrant;

    .line 61
    .local v1, "r":Lvendor/qti/iwlan/Registrant;
    iget-object v2, v1, Lvendor/qti/iwlan/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v1    # "r":Lvendor/qti/iwlan/Registrant;
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 65
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lvendor/qti/iwlan/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 70
    .end local p0    # "this":Lvendor/qti/iwlan/RegistrantList;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
