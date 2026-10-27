.class public Lcom/xiaopeng/aicabin/CarClient$a;
.super Ljava/lang/Object;
.source "CarClient.java"

# interfaces
.implements Landroid/car/Car$CarServiceLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aicabin/CarClient;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaopeng/aicabin/CarClient;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/CarClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/CarClient$a;->a:Lcom/xiaopeng/aicabin/CarClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLifecycleChanged(Landroid/car/Car;Z)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLifecycleChanged: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarClient"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/xiaopeng/aicabin/CarClient$a;->a:Lcom/xiaopeng/aicabin/CarClient;

    invoke-static {p1, p2}, Lcom/xiaopeng/aicabin/CarClient;->access$002(Lcom/xiaopeng/aicabin/CarClient;Z)Z

    return-void
.end method
