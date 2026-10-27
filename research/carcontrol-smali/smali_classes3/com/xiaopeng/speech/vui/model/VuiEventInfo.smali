.class public Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
.super Ljava/lang/Object;
.source "VuiEventInfo.java"


# instance fields
.field public hitView:Landroid/view/View;

.field public sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    .line 9
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    return-void
.end method
