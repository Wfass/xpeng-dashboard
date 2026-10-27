.class final Lcom/xiaopeng/musicradio/utils/ba$3;
.super Ljava/lang/Object;
.source "ProgramMediaStatUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

.field final synthetic b:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/ba$3;->a:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/utils/ba$3;->b:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ba$3;->a:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ba$3;->b:Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IDataLog;->sendStatData(Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/IStatEvent;)V

    return-void
.end method
