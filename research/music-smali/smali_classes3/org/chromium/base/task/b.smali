.class public abstract Lorg/chromium/base/task/b;
.super Lorg/chromium/base/task/a;
.source "BackgroundOnlyAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/chromium/base/task/a<",
        "TResult;>;"
    }
.end annotation


# static fields
.field static final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lorg/chromium/base/task/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/task/b;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/chromium/base/task/a;-><init>()V

    return-void
.end method
