.class public final synthetic Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$1:I

    iput p3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$2:I

    iput p4, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$3:I

    return-void
.end method


# virtual methods
.method public final onCorrectionLocationEnd(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$1:I

    iget v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$2:I

    iget v3, p0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$jaSCYJvaWK_2nzXlEqcFDLuqq3s;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->lambda$show$0(Landroid/view/View;IIILandroid/view/View;)V

    return-void
.end method
