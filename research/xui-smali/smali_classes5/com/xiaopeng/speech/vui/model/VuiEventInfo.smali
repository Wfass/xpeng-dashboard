.class public Lcom/xiaopeng/speech/vui/model/VuiEventInfo;
.super Ljava/lang/Object;
.source "VuiEventInfo.java"


# instance fields
.field public hitView:Landroid/view/View;

.field public sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sceneId"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    .line 9
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->sceneId:Ljava/lang/String;

    .line 10
    return-void
.end method
