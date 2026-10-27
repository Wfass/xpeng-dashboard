.class public abstract Lboz;
.super Ljava/lang/Object;
.source "BaseQueryCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseQueryCommand"


# instance fields
.field protected mCallback:Ljava/lang/String;

.field protected mData:Ljava/lang/String;

.field protected mEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lboz;->mEvent:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lboz;->mData:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lboz;->mCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lboz$1;

    invoke-direct {v0, p0, p1, p3, p2}, Lboz$1;-><init>(Lboz;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public doCommand()V
    .locals 3

    .line 37
    iget-object v0, p0, Lboz;->mEvent:Ljava/lang/String;

    iget-object v1, p0, Lboz;->mData:Ljava/lang/String;

    iget-object v2, p0, Lboz;->mCallback:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lboz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method

.method public onEvent()V
    .locals 3

    .line 29
    sget-boolean v0, Lcom/xiaopeng/musicradio/a;->b:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lboz;->mEvent:Ljava/lang/String;

    iget-object v1, p0, Lboz;->mData:Ljava/lang/String;

    iget-object v2, p0, Lboz;->mCallback:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lboz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lbpa;->a()Lbpa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbpa;->a(Lboz;)V

    :goto_0
    return-void
.end method
