.class public Lvendor/qti/iwlan/LogBuffer;
.super Ljava/lang/Object;
.source "LogBuffer.java"


# instance fields
.field private logs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max_size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lvendor/qti/iwlan/LogBuffer;->max_size:I

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lvendor/qti/iwlan/LogBuffer;->max_size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    .line 38
    return-void
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "log"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v2, p0, Lvendor/qti/iwlan/LogBuffer;->max_size:I

    if-ne v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 44
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 50
    iget-object v0, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 51
    :goto_0
    :try_start_0
    iget-object v1, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lvendor/qti/iwlan/LogBuffer;->logs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
