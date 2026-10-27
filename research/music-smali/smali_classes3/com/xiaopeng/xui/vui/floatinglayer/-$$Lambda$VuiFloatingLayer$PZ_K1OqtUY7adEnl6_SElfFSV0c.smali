.class public final synthetic Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

.field private final synthetic f$3:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iput p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$2:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    iput-object p4, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$3:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$2:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    iget-object v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayer$PZ_K1OqtUY7adEnl6_SElfFSV0c;->f$3:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->lambda$showFloatingLayer$1$VuiFloatingLayer(ILcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$AnimationCallback;)V

    return-void
.end method
