.class public Laxn;
.super Laxs;
.source "ProgramHistoryLoadingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxn$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 18
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/xiaopeng/musicradio/mine/history/program/view/HistoryProgramView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Laxs;-><init>([Ljava/lang/Class;)V

    return-void
.end method

.method public static a()Laxn;
    .locals 1

    .line 28
    sget-object v0, Laxn$a;->a:Laxn;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 33
    invoke-virtual {p0}, Laxn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lawk;

    invoke-direct {v0}, Lawk;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
