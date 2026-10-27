.class Lbmt$1$1;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt$1;->onPlayPosition(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmt$1;


# direct methods
.method constructor <init>(Lbmt$1;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lbmt$1$1;->a:Lbmt$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 175
    iget-object v0, p0, Lbmt$1$1;->a:Lbmt$1;

    iget-object v0, v0, Lbmt$1;->a:Lbmt;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lbmt;->a(Lbmt;J)J

    .line 176
    iget-object v0, p0, Lbmt$1$1;->a:Lbmt$1;

    iget-object v0, v0, Lbmt$1;->a:Lbmt;

    invoke-virtual {v0}, Lbmt;->u()V

    return-void
.end method
