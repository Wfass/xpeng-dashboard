.class public Lcom/xiaopeng/devtools/model/c/b/b;
.super Ljava/lang/Object;
.source "NavTestModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gU()Z
    .locals 2

    .line 13
    const-string v0, "sys.gps.dump"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public gV()V
    .locals 2

    .line 18
    const-string v0, "sys.gps.dump"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public gW()V
    .locals 2

    .line 23
    const-string v0, "sys.gps.dump"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public gX()Ljava/lang/String;
    .locals 2

    .line 28
    const-string v0, "sys.gps.version"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
