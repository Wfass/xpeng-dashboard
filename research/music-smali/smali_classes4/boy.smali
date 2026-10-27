.class public abstract Lboy;
.super Ljava/lang/Object;
.source "BasePushCommand.java"


# instance fields
.field private mBundle:Lorg/json/JSONObject;

.field private mId:I


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lboy;->mId:I

    .line 15
    iput-object p2, p0, Lboy;->mBundle:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 27
    invoke-static {}, Lbpa;->a()Lbpa;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbpa;->a(Lboy;)V

    return-void
.end method

.method protected abstract a(ILorg/json/JSONObject;)V
.end method

.method public doCommand()V
    .locals 2

    .line 31
    iget v0, p0, Lboy;->mId:I

    iget-object v1, p0, Lboy;->mBundle:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lboy;->a(ILorg/json/JSONObject;)V

    return-void
.end method

.method public abstract getCommand()Ljava/lang/String;
.end method

.method public onEvent()V
    .locals 2

    .line 19
    sget-boolean v0, Lcom/xiaopeng/musicradio/a;->b:Z

    if-eqz v0, :cond_0

    .line 20
    iget v0, p0, Lboy;->mId:I

    iget-object v1, p0, Lboy;->mBundle:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lboy;->a(ILorg/json/JSONObject;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lboy;->a()V

    :goto_0
    return-void
.end method
