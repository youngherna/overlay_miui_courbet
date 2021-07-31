.class public Lvendor/qti/iwlan/CommandException;
.super Ljava/lang/RuntimeException;
.source "CommandException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/iwlan/CommandException$Error;
    }
.end annotation


# instance fields
.field private mError:Lvendor/qti/iwlan/CommandException$Error;


# direct methods
.method public constructor <init>(Lvendor/qti/iwlan/CommandException$Error;)V
    .locals 1
    .param p1, "e"    # Lvendor/qti/iwlan/CommandException$Error;

    .line 125
    invoke-virtual {p1}, Lvendor/qti/iwlan/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lvendor/qti/iwlan/CommandException;->mError:Lvendor/qti/iwlan/CommandException$Error;

    .line 127
    return-void
.end method

.method public constructor <init>(Lvendor/qti/iwlan/CommandException$Error;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Lvendor/qti/iwlan/CommandException$Error;
    .param p2, "errString"    # Ljava/lang/String;

    .line 130
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lvendor/qti/iwlan/CommandException;->mError:Lvendor/qti/iwlan/CommandException$Error;

    .line 132
    return-void
.end method


# virtual methods
.method public getCommandError()Lvendor/qti/iwlan/CommandException$Error;
    .locals 1

    .line 135
    iget-object v0, p0, Lvendor/qti/iwlan/CommandException;->mError:Lvendor/qti/iwlan/CommandException$Error;

    return-object v0
.end method
