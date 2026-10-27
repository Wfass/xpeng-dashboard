.class Lcom/ut/mini/plugin/UTPluginMgr$1;
.super Ljava/util/ArrayList;
.source "UTPluginMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/plugin/UTPluginMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/ut/mini/plugin/UTPluginMgr;


# direct methods
.method constructor <init>(Lcom/ut/mini/plugin/UTPluginMgr;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/ut/mini/plugin/UTPluginMgr$1;->b:Lcom/ut/mini/plugin/UTPluginMgr;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string p1, "com.ut.mini.perf.UTPerfPlugin"

    invoke-virtual {p0, p1}, Lcom/ut/mini/plugin/UTPluginMgr$1;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method
