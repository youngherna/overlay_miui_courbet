.class public Lvendor/qti/iwlan/IWlanRequest;
.super Ljava/lang/Object;
.source "IWlanRequest.java"


# static fields
.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field mClientId:Ljava/lang/String;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mWakeLockType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lvendor/qti/iwlan/IWlanRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(ILandroid/os/Message;)V
    .locals 1
    .param p1, "request"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lvendor/qti/iwlan/IWlanRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lvendor/qti/iwlan/IWlanRequest;->mSerial:I

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/iwlan/IWlanRequest;->mClientId:Ljava/lang/String;

    .line 26
    iput p1, p0, Lvendor/qti/iwlan/IWlanRequest;->mRequest:I

    .line 27
    iput-object p2, p0, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/iwlan/IWlanRequest;->mWakeLockType:I

    .line 29
    return-void
.end method
