.class Lcom/xiaopeng/devtools/model/f/b$b$2;
.super Ljava/lang/Object;
.source "GpsPerformanceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/model/f/b$b;->onProviderEnabled(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ui:Lcom/xiaopeng/devtools/model/f/b$b;

.field final synthetic uj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/f/b$b;Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/b$b$2;->ui:Lcom/xiaopeng/devtools/model/f/b$b;

    iput-object p2, p0, Lcom/xiaopeng/devtools/model/f/b$b$2;->uj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$b$2;->ui:Lcom/xiaopeng/devtools/model/f/b$b;

    iget-object v0, v0, Lcom/xiaopeng/devtools/model/f/b$b;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->a(Lcom/xiaopeng/devtools/model/f/b;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/b$b$2;->uj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/b$b$2;->ui:Lcom/xiaopeng/devtools/model/f/b$b;

    iget-object v1, v1, Lcom/xiaopeng/devtools/model/f/b$b;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v1, v0}, Lcom/xiaopeng/devtools/model/f/b;->a(Lcom/xiaopeng/devtools/model/f/b;Landroid/location/Location;)V

    .line 187
    return-void
.end method
