.class public Lcom/xiaopeng/app/xpDialogInfo;
.super Ljava/lang/Object;
.source "xpDialogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/app/xpDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ATTACH:I = 0x3

.field public static final STATE_DEFAULT:I = 0x0

.field public static final STATE_DETACH:I = 0x4

.field public static final STATE_DIED:I = 0x8

.field public static final STATE_DISMISS:I = 0x7

.field public static final STATE_FOCUS_OFF:I = 0x6

.field public static final STATE_FOCUS_ON:I = 0x5

.field public static final STATE_HIDE:I = 0x2

.field public static final STATE_SHOW:I = 0x1

.field public static final TYPE_APPLICATION:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_SYSTEM:I = 0x1


# instance fields
.field public areaType:Ljava/lang/String;

.field public cancelable:Z

.field public closeOutside:Z

.field public dimAmount:F

.field public fullscreen:Z

.field public hasFocus:Z

.field public hashCode:I

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public screenId:I

.field public shown:Z

.field public state:I

.field public subType:I

.field public token:Ljava/lang/String;

.field public uid:I

.field public visible:Z

.field public windowFlags:I

.field public windowType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/xiaopeng/app/xpDialogInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/app/xpDialogInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/app/xpDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->hashCode:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->pid:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->uid:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->dimAmount:F

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->token:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->fullscreen:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->cancelable:Z

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->subType:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/app/xpDialogInfo;->screenId:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/app/xpDialogInfo;->areaType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/app/xpDialogInfo$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/app/xpDialogInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static clone(Lcom/xiaopeng/app/xpDialogInfo;)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 2

    if-eqz p0, :cond_0

    .line 118
    new-instance v0, Lcom/xiaopeng/app/xpDialogInfo;

    invoke-direct {v0}, Lcom/xiaopeng/app/xpDialogInfo;-><init>()V

    .line 119
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->hashCode:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->hashCode:I

    .line 120
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    .line 121
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    .line 122
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->pid:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->pid:I

    .line 123
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->uid:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->uid:I

    .line 124
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    .line 125
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->dimAmount:F

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->dimAmount:F

    .line 126
    iget-object v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->token:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->token:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    .line 128
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    iput-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    .line 129
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    iput-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    .line 130
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->fullscreen:Z

    iput-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->fullscreen:Z

    .line 131
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->cancelable:Z

    iput-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->cancelable:Z

    .line 132
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    iput-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    .line 133
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    iput-boolean v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    .line 134
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->subType:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->subType:I

    .line 135
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->screenId:I

    iput v1, v0, Lcom/xiaopeng/app/xpDialogInfo;->screenId:I

    .line 136
    iget-object p0, p0, Lcom/xiaopeng/app/xpDialogInfo;->areaType:Ljava/lang/String;

    iput-object p0, v0, Lcom/xiaopeng/app/xpDialogInfo;->areaType:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Landroid/app/Dialog;)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 83
    :cond_0
    new-instance v1, Lcom/xiaopeng/app/xpDialogInfo;

    invoke-direct {v1}, Lcom/xiaopeng/app/xpDialogInfo;-><init>()V

    .line 84
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    if-eqz v2, :cond_8

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 87
    :cond_2
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 88
    invoke-static {v3}, Lcom/xiaopeng/window/WindowTaskManager;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    .line 89
    invoke-static {v3}, Lcom/xiaopeng/window/WindowTaskManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    .line 90
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v6, v7, :cond_3

    move v6, v8

    goto :goto_1

    :cond_3
    move v6, v9

    .line 91
    :goto_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iput v7, v1, Lcom/xiaopeng/app/xpDialogInfo;->hashCode:I

    .line 92
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v7, v1, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    .line 93
    iget v7, v3, Landroid/view/WindowManager$LayoutParams;->windowFlags:I

    iput v7, v1, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->myPid()I

    move-result v7

    iput v7, v1, Lcom/xiaopeng/app/xpDialogInfo;->pid:I

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->myUid()I

    move-result v7

    iput v7, v1, Lcom/xiaopeng/app/xpDialogInfo;->uid:I

    .line 96
    iput v9, v1, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    if-eqz v6, :cond_4

    .line 97
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    iput v6, v1, Lcom/xiaopeng/app/xpDialogInfo;->dimAmount:F

    .line 98
    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->windowToken:Ljava/lang/String;

    iput-object v6, v1, Lcom/xiaopeng/app/xpDialogInfo;->token:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    iput-boolean v6, v1, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    goto :goto_3

    :cond_5
    move v0, v9

    :goto_3
    iput-boolean v0, v1, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    if-nez v5, :cond_7

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move v8, v9

    .line 102
    :cond_7
    :goto_4
    iput-boolean v8, v1, Lcom/xiaopeng/app/xpDialogInfo;->fullscreen:Z

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->isCancelable()Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaopeng/app/xpDialogInfo;->cancelable:Z

    .line 104
    invoke-virtual {v2}, Landroid/view/Window;->shouldCloseOnTouchOutside()Z

    move-result v0

    iput-boolean v0, v1, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    .line 105
    invoke-virtual {p0}, Landroid/app/Dialog;->hasFocus()Z

    move-result p0

    iput-boolean p0, v1, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    .line 106
    iget p0, v3, Landroid/view/WindowManager$LayoutParams;->screenId:I

    iput p0, v1, Lcom/xiaopeng/app/xpDialogInfo;->screenId:I

    .line 107
    iget-object p0, v3, Landroid/view/WindowManager$LayoutParams;->areaType:Ljava/lang/String;

    iput-object p0, v1, Lcom/xiaopeng/app/xpDialogInfo;->areaType:Ljava/lang/String;

    return-object v1

    :cond_8
    :goto_5
    return-object v0
.end method

.method public static create(Landroid/app/Dialog;I)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/xiaopeng/app/xpDialogInfo;->create(Landroid/app/Dialog;)Lcom/xiaopeng/app/xpDialogInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 112
    iput p1, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    :cond_0
    return-object p0
.end method

.method public static create(Landroid/os/Bundle;)Lcom/xiaopeng/app/xpDialogInfo;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 57
    :cond_0
    :try_start_0
    new-instance v2, Lcom/xiaopeng/app/xpDialogInfo;

    invoke-direct {v2}, Lcom/xiaopeng/app/xpDialogInfo;-><init>()V

    const/4 v3, 0x0

    .line 58
    iput v3, v2, Lcom/xiaopeng/app/xpDialogInfo;->hashCode:I

    const-string/jumbo v4, "windowType"

    const/16 v5, 0x35

    .line 59
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    const-string/jumbo v4, "windowFlags"

    .line 60
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    const-string/jumbo v4, "subType"

    const/4 v5, -0x1

    .line 61
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->subType:I

    const-string v4, "pid"

    .line 62
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->pid:I

    const-string/jumbo v4, "uid"

    .line 63
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->uid:I

    const-string/jumbo v4, "state"

    .line 64
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    const-string v4, "dimAmount"

    const/4 v5, 0x0

    .line 65
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    iput v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->dimAmount:F

    const-string/jumbo v4, "token"

    .line 66
    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->token:Ljava/lang/String;

    const-string v4, "packageName"

    .line 67
    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "shown"

    const/4 v5, 0x1

    .line 68
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    const-string/jumbo v4, "visible"

    .line 69
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    const-string v4, "fullscreen"

    .line 70
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->fullscreen:Z

    const-string v4, "cancelable"

    .line 71
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->cancelable:Z

    const-string v4, "closeOutside"

    .line 72
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    const-string v4, "hasFocus"

    .line 73
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v2, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    const-string/jumbo v4, "screenId"

    .line 74
    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/xiaopeng/app/xpDialogInfo;->screenId:I

    const-string v3, "areaType"

    .line 75
    invoke-virtual {p0, v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/xiaopeng/app/xpDialogInfo;->areaType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object v1
.end method

.method public static isFocused(Lcom/xiaopeng/app/xpDialogInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 224
    :cond_0
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    if-nez v1, :cond_1

    iget p0, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isPanelDialog(Lcom/xiaopeng/app/xpDialogInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 260
    :cond_0
    iget p0, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    const/16 v1, 0x100

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isRemoved(Lcom/xiaopeng/app/xpDialogInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 244
    :cond_0
    iget p0, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public static isVisible(Lcom/xiaopeng/app/xpDialogInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 228
    :cond_0
    iget v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 239
    invoke-static {p0}, Lcom/xiaopeng/app/xpDialogInfo;->isFocused(Lcom/xiaopeng/app/xpDialogInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    iget-boolean v1, p0, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "DialogInfo"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hashCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->hashCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " windowFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dimAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->dimAmount:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fullscreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->fullscreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cancelable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->cancelable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " closeOutside="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " subType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->subType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " screenId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->screenId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " areaType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/app/xpDialogInfo;->areaType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 164
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->hashCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->windowFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->state:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->dimAmount:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 171
    iget-object p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->token:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-boolean p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->shown:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 174
    iget-boolean p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->visible:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 175
    iget-boolean p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->fullscreen:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 176
    iget-boolean p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->cancelable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 177
    iget-boolean p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->closeOutside:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    iget-boolean p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->hasFocus:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 179
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->subType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->screenId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object p2, p0, Lcom/xiaopeng/app/xpDialogInfo;->areaType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
