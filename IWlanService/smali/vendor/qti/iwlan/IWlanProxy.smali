.class public Lvendor/qti/iwlan/IWlanProxy;
.super Ljava/lang/Object;
.source "IWlanProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;
    }
.end annotation


# static fields
.field static final EVENT_PROXY_DEAD:I = 0x5

.field static final EVENT_RESP_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field public static final FOR_RESP_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final REQUEST_DATA_CALL_LIST:I = 0x3

.field static final REQUEST_DEACTIVATE_DATA_CALL:I = 0x2

.field static final REQUEST_GET_DATA_REG_STATE:I = 0x4

.field static final REQUEST_GET_QUALIFIED_NETWORKS:I = 0x5

.field static final REQUEST_SETUP_DATA_CALL:I = 0x1

.field static final RESPONSE_ACKNOWLEDGEMENT:I = 0x32

.field private static final RESP_WAKELOCK_TAG:Ljava/lang/String; = "IWLAN_PROXY_RESP_WL"

.field private static final RESP_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field public static final TAG:Ljava/lang/String;

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "IWLAN_PROXY_WL"

.field private static final WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field private static instances:[Lvendor/qti/iwlan/IWlanProxy;

.field static iwlanModemSupport:Z


# instance fields
.field public iwlanLog:Lvendor/qti/iwlan/IWlanLog;

.field protected mDataCallListChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

.field protected mDataRegistrationStateChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

.field final mDeathRecipient:Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;

.field final mHandler:Landroid/os/Handler;

.field mIndication:Lvendor/qti/iwlan/IWlanIndication;

.field final mLooper:Landroid/os/Looper;

.field protected mQualifiedNetworksChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lvendor/qti/iwlan/IWlanRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRespWakeLock:Landroid/os/PowerManager$WakeLock;

.field volatile mRespWlSequenceNum:I

.field mResponse:Lvendor/qti/iwlan/IWlanResponse;

.field volatile mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

.field final mServiceCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mSlotId:Ljava/lang/Integer;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field volatile mWlSequenceNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    .line 59
    const-string v0, "slot1"

    const-string v1, "slot2"

    const-string v2, "slot3"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/iwlan/IWlanProxy;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 60
    array-length v0, v0

    new-array v0, v0, [Lvendor/qti/iwlan/IWlanProxy;

    sput-object v0, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanModemSupport:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # Ljava/lang/Integer;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mServiceCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mWlSequenceNum:I

    .line 86
    iput v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWlSequenceNum:I

    .line 630
    new-instance v1, Lvendor/qti/iwlan/RegistrantList;

    invoke-direct {v1}, Lvendor/qti/iwlan/RegistrantList;-><init>()V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mDataCallListChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    .line 631
    new-instance v1, Lvendor/qti/iwlan/RegistrantList;

    invoke-direct {v1}, Lvendor/qti/iwlan/RegistrantList;-><init>()V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mDataRegistrationStateChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    .line 632
    new-instance v1, Lvendor/qti/iwlan/RegistrantList;

    invoke-direct {v1}, Lvendor/qti/iwlan/RegistrantList;-><init>()V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mQualifiedNetworksChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    .line 124
    iput-object p2, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    .line 126
    new-instance v1, Lvendor/qti/iwlan/IWlanLog;

    invoke-direct {v1}, Lvendor/qti/iwlan/IWlanLog;-><init>()V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    .line 127
    new-instance v1, Lvendor/qti/iwlan/IWlanIndication;

    invoke-direct {v1, p0}, Lvendor/qti/iwlan/IWlanIndication;-><init>(Lvendor/qti/iwlan/IWlanProxy;)V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mIndication:Lvendor/qti/iwlan/IWlanIndication;

    .line 128
    new-instance v1, Lvendor/qti/iwlan/IWlanResponse;

    invoke-direct {v1, p0}, Lvendor/qti/iwlan/IWlanResponse;-><init>(Lvendor/qti/iwlan/IWlanProxy;)V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mResponse:Lvendor/qti/iwlan/IWlanResponse;

    .line 129
    new-instance v1, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;

    invoke-direct {v1, p0}, Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;-><init>(Lvendor/qti/iwlan/IWlanProxy;)V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mDeathRecipient:Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;

    .line 130
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 132
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mLooper:Landroid/os/Looper;

    .line 133
    new-instance v2, Lvendor/qti/iwlan/IWlanProxy$1;

    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lvendor/qti/iwlan/IWlanProxy$1;-><init>(Lvendor/qti/iwlan/IWlanProxy;Landroid/os/Looper;)V

    iput-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mHandler:Landroid/os/Handler;

    .line 182
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 183
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "IWLAN_PROXY_WL"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    invoke-virtual {v4, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 185
    const-string v4, "IWLAN_PROXY_RESP_WL"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 187
    iput v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    .line 189
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new IWlan Proxy on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lvendor/qti/iwlan/IWlanProxy;I)Z
    .locals 1
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanProxy;
    .param p1, "x1"    # I

    .line 51
    invoke-direct {p0, p1}, Lvendor/qti/iwlan/IWlanProxy;->clearWakeLock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lvendor/qti/iwlan/IWlanProxy;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/iwlan/IWlanProxy;

    .line 51
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->resetProxyAndRequestList()V

    return-void
.end method

.method private acquireWakeLock(Lvendor/qti/iwlan/IWlanRequest;I)V
    .locals 6
    .param p1, "req"    # Lvendor/qti/iwlan/IWlanRequest;
    .param p2, "wakeLockType"    # I

    .line 488
    monitor-enter p1

    .line 489
    :try_start_0
    iget v0, p1, Lvendor/qti/iwlan/IWlanRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to aquire wakelock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    monitor-exit p1

    return-void

    .line 494
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    .line 536
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquiring Invalid Wakelock type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    monitor-exit p1

    return-void

    .line 517
    :cond_1
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 518
    :try_start_1
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 519
    iget v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWlSequenceNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    :try_start_2
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 523
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 524
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 525
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 531
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWlSequenceNum:I

    sub-int/2addr v3, v0

    iput v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWlSequenceNum:I

    .line 533
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    monitor-exit v1

    .line 534
    goto :goto_2

    .line 533
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lvendor/qti/iwlan/IWlanProxy;
    .end local p1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .end local p2    # "wakeLockType":I
    :try_start_4
    throw v0

    .line 496
    .restart local p0    # "this":Lvendor/qti/iwlan/IWlanProxy;
    .restart local p1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .restart local p2    # "wakeLockType":I
    :cond_2
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 497
    :try_start_5
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 498
    iget v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    .line 499
    iget v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWlSequenceNum:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 502
    :try_start_6
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 503
    .local v2, "msg":Landroid/os/Message;
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWlSequenceNum:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 504
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 513
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_1

    .line 505
    :catch_1
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_7
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 511
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    sub-int/2addr v3, v0

    iput v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    .line 512
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWlSequenceNum:I

    sub-int/2addr v3, v0

    iput v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWlSequenceNum:I

    .line 514
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 515
    nop

    .line 539
    :goto_2
    :try_start_8
    iput p2, p1, Lvendor/qti/iwlan/IWlanRequest;->mWakeLockType:I

    .line 540
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 541
    return-void

    .line 514
    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local p0    # "this":Lvendor/qti/iwlan/IWlanProxy;
    .end local p1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .end local p2    # "wakeLockType":I
    :try_start_a
    throw v0

    .line 540
    .restart local p0    # "this":Lvendor/qti/iwlan/IWlanProxy;
    .restart local p1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .restart local p2    # "wakeLockType":I
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0
.end method

.method private clearWakeLock(I)Z
    .locals 7
    .param p1, "wakeLockType"    # I

    .line 569
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 570
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 571
    :try_start_0
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    .line 572
    :cond_0
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v4, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOTE: mWakeLockCount is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "at time of clearing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iput v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    .line 574
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 575
    monitor-exit v2

    return v0

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 578
    :cond_1
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 579
    :try_start_1
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    .line 580
    :cond_2
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mRespWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 581
    monitor-exit v2

    return v0

    .line 582
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private convertDpiToString(Landroid/hardware/radio/V1_4/DataProfileInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "dpi"    # Landroid/hardware/radio/V1_4/DataProfileInfo;

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Profile ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->profileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", APN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Protocol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->protocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Roaming Protocol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->roamingProtocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Auth Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->authType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", User = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->user:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Passwrod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Supported Apn Types bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->supportedApnTypesBitmap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", BearerBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->bearerBitmap:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MTU = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_4/DataProfileInfo;->mtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;
    .locals 2
    .param p0, "dp"    # Landroid/telephony/data/DataProfile;

    .line 592
    new-instance v0, Landroid/hardware/radio/V1_4/DataProfileInfo;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/DataProfileInfo;-><init>()V

    .line 594
    .local v0, "dpi":Landroid/hardware/radio/V1_4/DataProfileInfo;
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->profileId:I

    .line 595
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApn()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->apn:Ljava/lang/String;

    .line 596
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->protocol:I

    .line 597
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getRoamingProtocolType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->roamingProtocol:I

    .line 598
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getAuthType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->authType:I

    .line 599
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->user:Ljava/lang/String;

    .line 600
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->password:Ljava/lang/String;

    .line 601
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getType()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->type:I

    .line 605
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->enabled:Z

    .line 606
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->supportedApnTypesBitmap:I

    .line 607
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->bearerBitmap:I

    .line 608
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getMtu()I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_4/DataProfileInfo;->mtu:I

    .line 610
    return-object v0
.end method

.method public static disableIWlan(Lvendor/qti/iwlan/IWlanProxy;)V
    .locals 6
    .param p0, "proxy"    # Lvendor/qti/iwlan/IWlanProxy;

    .line 422
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 423
    .local v0, "slotId":I
    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    monitor-enter v1

    .line 424
    :try_start_0
    sget-object v2, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 427
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 429
    :try_start_1
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    invoke-interface {v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->iwlanDisabled()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    goto :goto_0

    .line 430
    :catch_0
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableIWlan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    sget-object v2, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 436
    :cond_1
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private findAndRemoveRequestFromList(I)Lvendor/qti/iwlan/IWlanRequest;
    .locals 3
    .param p1, "serial"    # I

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "req":Lvendor/qti/iwlan/IWlanRequest;
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/iwlan/IWlanRequest;

    move-object v0, v2

    .line 389
    if-eqz v0, :cond_0

    .line 390
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 392
    :cond_0
    monitor-exit v1

    .line 394
    return-object v0

    .line 392
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstanceBySlotId(Landroid/content/Context;I)Lvendor/qti/iwlan/IWlanProxy;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 114
    sget-object v0, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    new-instance v2, Lvendor/qti/iwlan/IWlanProxy;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lvendor/qti/iwlan/IWlanProxy;-><init>(Landroid/content/Context;Ljava/lang/Integer;)V

    aput-object v2, v1, p1

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    sget-object v0, Lvendor/qti/iwlan/IWlanProxy;->instances:[Lvendor/qti/iwlan/IWlanProxy;

    aget-object v0, v0, p1

    return-object v0

    .line 118
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    .locals 6

    .line 194
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    return-object v0

    .line 199
    :cond_0
    :try_start_0
    sget-object v0, Lvendor/qti/iwlan/IWlanProxy;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    aget-object v0, v0, v1

    invoke-static {v0, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->getService(Ljava/lang/String;Z)Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    .line 201
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mDeathRecipient:Lvendor/qti/iwlan/IWlanProxy$IWlanServiceDeathRecipient;

    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mServiceCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 203
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mResponse:Lvendor/qti/iwlan/IWlanResponse;

    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mIndication:Lvendor/qti/iwlan/IWlanIndication;

    invoke-interface {v0, v1, v3}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->setResponseFunctions(Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse;Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication;)V

    .line 204
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new service: IIWlan client connected on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lvendor/qti/iwlan/IWlanProxy;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 205
    iget-object v5, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    if-nez v5, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :goto_2
    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 207
    :cond_3
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    const-string v2, "getService: proxy = null"

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_3
    goto :goto_4

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    .line 211
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getService error for slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lvendor/qti/iwlan/IWlanProxy;->mSlotId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    return-object v0
.end method

.method private obtainRequest(ILandroid/os/Message;)Lvendor/qti/iwlan/IWlanRequest;
    .locals 4
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 375
    new-instance v0, Lvendor/qti/iwlan/IWlanRequest;

    invoke-direct {v0, p1, p2}, Lvendor/qti/iwlan/IWlanRequest;-><init>(ILandroid/os/Message;)V

    .line 377
    .local v0, "req":Lvendor/qti/iwlan/IWlanRequest;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->acquireWakeLock(Lvendor/qti/iwlan/IWlanRequest;I)V

    .line 378
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    iget v3, v0, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 380
    monitor-exit v1

    .line 382
    return-object v0

    .line 380
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 614
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 625
    const-string v0, "<unknown request>"

    return-object v0

    .line 624
    :cond_0
    const-string v0, "REQUEST_GET_QUALIFIED_NETWORKS"

    return-object v0

    .line 622
    :cond_1
    const-string v0, "REQUEST_GET_DATA_REG_STATE"

    return-object v0

    .line 620
    :cond_2
    const-string v0, "REQUEST_DATA_CALL_LIST"

    return-object v0

    .line 618
    :cond_3
    const-string v0, "REQUEST_DEACTIVATE_DATA_CALL"

    return-object v0

    .line 616
    :cond_4
    const-string v0, "REQUEST_SETUP_DATA_CALL"

    return-object v0
.end method

.method private resetProxyAndRequestList()V
    .locals 9

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mService:Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    .line 228
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    const-string v3, "reset Proxy, IIWLAN service set to null"

    invoke-virtual {v1, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mServiceCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 234
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    .line 235
    :try_start_0
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 236
    .local v2, "count":I
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v4, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWakeLockCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mRequestList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 240
    iget-object v4, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/iwlan/IWlanRequest;

    .line 241
    .local v4, "req":Lvendor/qti/iwlan/IWlanRequest;
    iget-object v5, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v6, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v8}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v5, v4, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    if-eqz v5, :cond_0

    .line 244
    iget-object v5, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v6, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    const-string v7, "Sending RADIO_NOT_AVAILABLE AsyncResult"

    invoke-virtual {v5, v6, v7}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v5, v4, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    new-instance v6, Lvendor/qti/iwlan/CommandException;

    sget-object v7, Lvendor/qti/iwlan/CommandException$Error;->RADIO_NOT_AVAILABLE:Lvendor/qti/iwlan/CommandException$Error;

    invoke-direct {v6, v7}, Lvendor/qti/iwlan/CommandException;-><init>(Lvendor/qti/iwlan/CommandException$Error;)V

    invoke-static {v5, v0, v6}, Lvendor/qti/iwlan/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lvendor/qti/iwlan/AsyncResult;

    .line 246
    iget-object v5, v4, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 249
    :cond_0
    invoke-virtual {p0, v4}, Lvendor/qti/iwlan/IWlanProxy;->decrementWakeLock(Lvendor/qti/iwlan/IWlanRequest;)V

    .line 239
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "i":I
    .end local v4    # "req":Lvendor/qti/iwlan/IWlanRequest;
    :cond_1
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 252
    .end local v2    # "count":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    .line 255
    return-void

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public deactivateDataCall(IILandroid/os/Message;)V
    .locals 9
    .param p1, "cid"    # I
    .param p2, "reason"    # I
    .param p3, "result"    # Landroid/os/Message;

    .line 309
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    move-result-object v0

    .line 311
    .local v0, "service":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    if-eqz v0, :cond_0

    .line 312
    const/4 v1, 0x2

    invoke-direct {p0, v1, p3}, Lvendor/qti/iwlan/IWlanProxy;->obtainRequest(ILandroid/os/Message;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v1

    .line 313
    .local v1, "req":Lvendor/qti/iwlan/IWlanRequest;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 315
    .local v2, "serial":Ljava/util/Random;
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v4, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v7}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", reason = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cid = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget v3, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-interface {v0, v3, p1, p2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->deactivateDataCall(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v3

    .line 321
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v5, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v6}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " error : "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .end local v2    # "serial":Ljava/util/Random;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public decrementWakeLock(Lvendor/qti/iwlan/IWlanRequest;)V
    .locals 5
    .param p1, "req"    # Lvendor/qti/iwlan/IWlanRequest;

    .line 544
    monitor-enter p1

    .line 545
    :try_start_0
    iget v0, p1, Lvendor/qti/iwlan/IWlanRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    .line 562
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decrementing Invalid Wakelock type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lvendor/qti/iwlan/IWlanRequest;->mWakeLockType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_0
    goto :goto_1

    .line 547
    :cond_1
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :try_start_1
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    if-le v3, v2, :cond_2

    .line 549
    iget v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    sub-int/2addr v3, v2

    iput v3, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    goto :goto_0

    .line 551
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLockCount:I

    .line 552
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 554
    :goto_0
    monitor-exit v0

    .line 555
    goto :goto_1

    .line 554
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lvendor/qti/iwlan/IWlanProxy;
    .end local p1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    :try_start_2
    throw v1

    .line 560
    .restart local p0    # "this":Lvendor/qti/iwlan/IWlanProxy;
    .restart local p1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    :cond_3
    nop

    .line 564
    :goto_1
    iput v1, p1, Lvendor/qti/iwlan/IWlanRequest;->mWakeLockType:I

    .line 565
    monitor-exit p1

    .line 566
    return-void

    .line 565
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getAllQualifiedNetworks(Landroid/os/Message;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 359
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    move-result-object v0

    .line 361
    .local v0, "service":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    if-eqz v0, :cond_0

    .line 362
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1}, Lvendor/qti/iwlan/IWlanProxy;->obtainRequest(ILandroid/os/Message;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v1

    .line 364
    .local v1, "req":Lvendor/qti/iwlan/IWlanRequest;
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v6}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :try_start_0
    iget v2, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->getAllQualifiedNetworks(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v2

    .line 369
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v4, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v5}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .end local v1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public getDataRegistrationState(Landroid/os/Message;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 343
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    move-result-object v0

    .line 345
    .local v0, "service":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    if-eqz v0, :cond_0

    .line 346
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1}, Lvendor/qti/iwlan/IWlanProxy;->obtainRequest(ILandroid/os/Message;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v1

    .line 348
    .local v1, "req":Lvendor/qti/iwlan/IWlanRequest;
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v6}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :try_start_0
    iget v2, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->getDataRegistrationState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    goto :goto_0

    .line 352
    :catch_0
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v4, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v5}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public modemSupportNotPresent()V
    .locals 1

    .line 636
    const/4 v0, 0x0

    sput-boolean v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanModemSupport:Z

    .line 637
    return-void
.end method

.method processRequestAck(I)V
    .locals 5
    .param p1, "serial"    # I

    .line 468
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanProxy;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/iwlan/IWlanRequest;

    .line 470
    .local v1, "req":Lvendor/qti/iwlan/IWlanRequest;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    if-nez v1, :cond_0

    .line 472
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processRequestAck: request not found for serial = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p0, v1}, Lvendor/qti/iwlan/IWlanProxy;->decrementWakeLock(Lvendor/qti/iwlan/IWlanRequest;)V

    .line 475
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Recieved ACK for serial = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 470
    .end local v1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public processResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;ZLjava/lang/String;)Lvendor/qti/iwlan/IWlanRequest;
    .locals 6
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .param p2, "sendAck"    # Z
    .param p3, "tag"    # Ljava/lang/String;

    .line 447
    iget v0, p1, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->serial:I

    .line 448
    .local v0, "serial":I
    iget v1, p1, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->error:I

    .line 450
    .local v1, "error":I
    invoke-direct {p0, v0}, Lvendor/qti/iwlan/IWlanProxy;->findAndRemoveRequestFromList(I)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v2

    .line 452
    .local v2, "req":Lvendor/qti/iwlan/IWlanRequest;
    if-nez v2, :cond_0

    .line 453
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " > processResponse: Unexpected response! error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const/4 v3, 0x0

    return-object v3

    .line 456
    :cond_0
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " > Response Processed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    if-eqz p2, :cond_1

    .line 458
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " > send ACK for serial"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lvendor/qti/iwlan/IWlanLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0, p3}, Lvendor/qti/iwlan/IWlanProxy;->sendAck(Ljava/lang/String;)V

    .line 463
    :cond_1
    return-object v2
.end method

.method public registerForDataCallListChanged(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .line 640
    if-eqz p1, :cond_0

    .line 641
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mDataCallListChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lvendor/qti/iwlan/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 643
    :cond_0
    return-void
.end method

.method public registerForDataRegistrationStateChanged(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .line 652
    if-eqz p1, :cond_0

    .line 653
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mDataRegistrationStateChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lvendor/qti/iwlan/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 655
    :cond_0
    return-void
.end method

.method public registerForQualifiedNetworksChanged(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .line 664
    if-eqz p1, :cond_0

    .line 665
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mQualifiedNetworksChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lvendor/qti/iwlan/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 667
    :cond_0
    return-void
.end method

.method public requestDataCallList(Landroid/os/Message;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Message;

    .line 327
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    move-result-object v0

    .line 329
    .local v0, "service":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    if-eqz v0, :cond_0

    .line 330
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lvendor/qti/iwlan/IWlanProxy;->obtainRequest(ILandroid/os/Message;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v1

    .line 332
    .local v1, "req":Lvendor/qti/iwlan/IWlanRequest;
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v6}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :try_start_0
    iget v2, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-interface {v0, v2}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->getDataCallList(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v4, Lvendor/qti/iwlan/IWlanProxy;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v1, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v5}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error : "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v1    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public sendAck(Ljava/lang/String;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;

    .line 401
    new-instance v0, Lvendor/qti/iwlan/IWlanRequest;

    const/16 v1, 0x32

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lvendor/qti/iwlan/IWlanRequest;-><init>(ILandroid/os/Message;)V

    .line 402
    .local v0, "temp_req":Lvendor/qti/iwlan/IWlanRequest;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->acquireWakeLock(Lvendor/qti/iwlan/IWlanRequest;I)V

    .line 404
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    move-result-object v1

    .line 405
    .local v1, "proxy":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    if-eqz v1, :cond_0

    .line 407
    :try_start_0
    invoke-interface {v1}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    goto :goto_1

    .line 408
    :catch_0
    move-exception v2

    .line 409
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lvendor/qti/iwlan/IWlanProxy;->resetProxyAndRequestList()V

    .line 410
    iget-object v3, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 413
    :cond_0
    iget-object v2, p0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    const-string v3, "Error trying to send ack, proxy = null"

    invoke-virtual {v2, p1, v3}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_1
    return-void
.end method

.method public setupDataCall(Landroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;Landroid/os/Message;)V
    .locals 16
    .param p1, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p2, "isRoaming"    # Z
    .param p3, "allowRoaming"    # Z
    .param p4, "reason"    # I
    .param p5, "linkProperties"    # Landroid/net/LinkProperties;
    .param p6, "result"    # Landroid/os/Message;

    .line 277
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Lvendor/qti/iwlan/IWlanProxy;->getService()Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;

    move-result-object v9

    .line 279
    .local v9, "service":Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;
    if-eqz v9, :cond_2

    .line 280
    const/4 v0, 0x1

    move-object/from16 v10, p6

    invoke-direct {v1, v0, v10}, Lvendor/qti/iwlan/IWlanProxy;->obtainRequest(ILandroid/os/Message;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v11

    .line 283
    .local v11, "req":Lvendor/qti/iwlan/IWlanRequest;
    invoke-static/range {p1 .. p1}, Lvendor/qti/iwlan/IWlanProxy;->convertToHalDataProfile(Landroid/telephony/data/DataProfile;)Landroid/hardware/radio/V1_4/DataProfileInfo;

    move-result-object v12

    .line 284
    .local v12, "dpi":Landroid/hardware/radio/V1_4/DataProfileInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 285
    .local v13, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    .line 286
    .local v14, "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p5, :cond_1

    .line 287
    invoke-virtual/range {p5 .. p5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 288
    .local v2, "address":Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 289
    .local v3, "addr":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .end local v2    # "address":Landroid/net/LinkAddress;
    .end local v3    # "addr":Ljava/net/InetAddress;
    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 292
    .local v2, "dns":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v2    # "dns":Ljava/net/InetAddress;
    goto :goto_1

    .line 296
    :cond_1
    iget-object v0, v1, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v2, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v11, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " > "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v4}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", reason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dpi: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v1, v12}, Lvendor/qti/iwlan/IWlanProxy;->convertDpiToString(Landroid/hardware/radio/V1_4/DataProfileInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", addresses = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v4, v13}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], dnses = ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v4, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v0, v2, v3}, Lvendor/qti/iwlan/IWlanLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :try_start_0
    iget v3, v11, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    move-object v2, v9

    move-object v4, v12

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v13

    move-object v8, v14

    invoke-interface/range {v2 .. v8}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlan;->setupDataCall(ILandroid/hardware/radio/V1_4/DataProfileInfo;ZILjava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_2

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v3, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v11, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    invoke-static {v5}, Lvendor/qti/iwlan/IWlanProxy;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvendor/qti/iwlan/IWlanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v11    # "req":Lvendor/qti/iwlan/IWlanRequest;
    .end local v12    # "dpi":Landroid/hardware/radio/V1_4/DataProfileInfo;
    .end local v13    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "dnses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v10, p6

    .line 306
    :goto_2
    return-void
.end method

.method public unregisterForDataCallListChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 646
    if-eqz p1, :cond_0

    .line 647
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mDataCallListChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    invoke-virtual {v0, p1}, Lvendor/qti/iwlan/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 649
    :cond_0
    return-void
.end method

.method public unregisterForDataRegistrationStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 658
    if-eqz p1, :cond_0

    .line 659
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mDataRegistrationStateChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    invoke-virtual {v0, p1}, Lvendor/qti/iwlan/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 661
    :cond_0
    return-void
.end method

.method public unregisterForQualifiedNetworksChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 670
    if-eqz p1, :cond_0

    .line 671
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanProxy;->mQualifiedNetworksChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    invoke-virtual {v0, p1}, Lvendor/qti/iwlan/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 673
    :cond_0
    return-void
.end method
