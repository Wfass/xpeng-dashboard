.class public Lcom/xiaopeng/devtools/devdebug/drivemode/a;
.super Ljava/lang/Object;
.source "DriveModeModel.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static bR(I)V
    .locals 3

    .line 50
    const-string v0, "DriveModeModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModePreference mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/xiaopeng/devtools/utils/q;->le()Lcom/xiaopeng/devtools/utils/q;

    move-result-object v0

    const-string v1, "pref_select_drive_mode"

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/devtools/utils/q;->putInt(Ljava/lang/String;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public bQ(I)V
    .locals 3

    .line 26
    const-string v0, "DriveModeModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 28
    :cond_0
    nop

    .line 36
    :cond_1
    return-void
.end method

.method public getMode()I
    .locals 3

    .line 39
    invoke-static {}, Lcom/xiaopeng/devtools/utils/q;->le()Lcom/xiaopeng/devtools/utils/q;

    move-result-object v0

    const-string v1, "pref_select_drive_mode"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/utils/q;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    const/4 v1, 0x1

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    if-ge v0, v1, :cond_1

    .line 41
    :cond_0
    nop

    .line 43
    move v0, v1

    :cond_1
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 47
    return-void
.end method
