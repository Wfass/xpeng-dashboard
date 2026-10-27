.class Lcom/xiaopeng/devtools/model/f/b$b$1;
.super Ljava/lang/Object;
.source "GpsPerformanceModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/model/f/b$b;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic uh:Landroid/location/Location;

.field final synthetic ui:Lcom/xiaopeng/devtools/model/f/b$b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/f/b$b;Landroid/location/Location;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/b$b$1;->ui:Lcom/xiaopeng/devtools/model/f/b$b;

    iput-object p2, p0, Lcom/xiaopeng/devtools/model/f/b$b$1;->uh:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$b$1;->ui:Lcom/xiaopeng/devtools/model/f/b$b;

    iget-object v0, v0, Lcom/xiaopeng/devtools/model/f/b$b;->ug:Lcom/xiaopeng/devtools/model/f/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/f/b$b$1;->uh:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/f/b;->a(Lcom/xiaopeng/devtools/model/f/b;Landroid/location/Location;)V

    .line 171
    return-void
.end method
