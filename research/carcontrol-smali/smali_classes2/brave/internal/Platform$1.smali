.class Lbrave/internal/Platform$1;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Lbrave/Clock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbrave/internal/Platform;->clock()Lbrave/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbrave/internal/Platform;


# direct methods
.method constructor <init>(Lbrave/internal/Platform;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lbrave/internal/Platform$1;->this$0:Lbrave/internal/Platform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMicroseconds()J
    .locals 4

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "System.currentTimeMillis()"

    return-object v0
.end method
