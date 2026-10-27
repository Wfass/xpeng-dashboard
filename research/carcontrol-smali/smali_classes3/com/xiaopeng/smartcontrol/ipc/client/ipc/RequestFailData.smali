.class public Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;
.super Ljava/lang/Object;
.source "RequestFailData.java"


# instance fields
.field public method:Ljava/lang/String;

.field public module:Ljava/lang/String;

.field public param:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "method",
            "param"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;->module:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;->method:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/xiaopeng/smartcontrol/ipc/client/ipc/RequestFailData;->param:Ljava/lang/String;

    return-void
.end method
