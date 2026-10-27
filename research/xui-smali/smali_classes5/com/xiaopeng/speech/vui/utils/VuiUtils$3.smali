.class final Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;
.super Ljava/lang/Object;
.source "VuiUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1563
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;->val$sceneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1566
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;->val$sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 1567
    return-void
.end method
