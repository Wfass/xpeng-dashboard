.class public final synthetic Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$Nief1_qVMSTNOd_rKl2ePlAG0YU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;

.field private final synthetic f$1:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$Nief1_qVMSTNOd_rKl2ePlAG0YU;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$Nief1_qVMSTNOd_rKl2ePlAG0YU;->f$1:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$Nief1_qVMSTNOd_rKl2ePlAG0YU;->f$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAmbientLight$Nief1_qVMSTNOd_rKl2ePlAG0YU;->f$1:Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;->lambda$onStop$1(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAmbientLight;Lcom/xiaopeng/xuimanager/ambientlight/AmbientLightManager;)V

    return-void
.end method
