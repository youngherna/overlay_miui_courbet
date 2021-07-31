.class public final synthetic Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;

    invoke-direct {v0}, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;-><init>()V

    sput-object v0, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;->INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lvendor/qti/iwlan/IWlanDataService;->lambda$convertDataCallResult$0(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
