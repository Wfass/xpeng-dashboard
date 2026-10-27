.class Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;
.super Ljava/lang/Object;
.source "StatMqttDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/datalog/stat/StatMqttDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatEventWithFiles"
.end annotation


# instance fields
.field event:Lcom/xiaopeng/datalog/StatEvent;

.field filePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/datalog/stat/StatMqttDelegate;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/datalog/stat/StatMqttDelegate;Lcom/xiaopeng/datalog/StatEvent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "event",
            "filePaths"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/datalog/StatEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;->this$0:Lcom/xiaopeng/datalog/stat/StatMqttDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;->event:Lcom/xiaopeng/datalog/StatEvent;

    .line 203
    iput-object p3, p0, Lcom/xiaopeng/datalog/stat/StatMqttDelegate$StatEventWithFiles;->filePaths:Ljava/util/List;

    return-void
.end method
