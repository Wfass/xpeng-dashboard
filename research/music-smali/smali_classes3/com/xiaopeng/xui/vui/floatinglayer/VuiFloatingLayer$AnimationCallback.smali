.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;
.super Ljava/lang/Object;
.source "VuiFloatingLayer.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

.field private type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->type:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 1

    .line 193
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    const-string v0, "onAnimationEnd "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iget v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->type:I

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    return-void
.end method

.method public onAnimationStart(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;)V
    .locals 1

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    const-string v0, "onAnimationStart "

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Ljava/lang/String;)V

    return-void
.end method
