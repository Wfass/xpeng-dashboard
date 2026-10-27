.class public final synthetic Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$NvUE62yOzO0XM7NgPMZyD6osl1w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/car/xpeng/imm/CarImmManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/car/xpeng/imm/CarImmManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$NvUE62yOzO0XM7NgPMZyD6osl1w;->f$0:Landroid/car/xpeng/imm/CarImmManager;

    iput-boolean p2, p0, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$NvUE62yOzO0XM7NgPMZyD6osl1w;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$NvUE62yOzO0XM7NgPMZyD6osl1w;->f$0:Landroid/car/xpeng/imm/CarImmManager;

    iget-boolean v1, p0, Landroid/car/xpeng/imm/-$$Lambda$CarImmManager$NvUE62yOzO0XM7NgPMZyD6osl1w;->f$1:Z

    invoke-virtual {v0, v1}, Landroid/car/xpeng/imm/CarImmManager;->lambda$dispatchImmAvmStateChanged$1$CarImmManager(Z)V

    return-void
.end method
