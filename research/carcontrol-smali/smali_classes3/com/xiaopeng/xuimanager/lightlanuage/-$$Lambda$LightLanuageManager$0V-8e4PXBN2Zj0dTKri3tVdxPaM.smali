.class public final synthetic Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$0V-8e4PXBN2Zj0dTKri3tVdxPaM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$0V-8e4PXBN2Zj0dTKri3tVdxPaM;->f$0:I

    iput p2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$0V-8e4PXBN2Zj0dTKri3tVdxPaM;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$0V-8e4PXBN2Zj0dTKri3tVdxPaM;->f$0:I

    iget v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$0V-8e4PXBN2Zj0dTKri3tVdxPaM;->f$1:I

    check-cast p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->lambda$dispatchUpgradeEventToClient$4(IILcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V

    return-void
.end method
