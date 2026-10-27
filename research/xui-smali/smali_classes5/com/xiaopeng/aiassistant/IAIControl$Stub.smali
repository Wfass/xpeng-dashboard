.class public abstract Lcom/xiaopeng/aiassistant/IAIControl$Stub;
.super Landroid/os/Binder;
.source "IAIControl.java"

# interfaces
.implements Lcom/xiaopeng/aiassistant/IAIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aiassistant/IAIControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aiassistant/IAIControl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.aiassistant.IAIControl"

.field static final TRANSACTION_closeWindow:I = 0x1

.field static final TRANSACTION_getShowingWindow:I = 0x8

.field static final TRANSACTION_getXpAttributeConfig:I = 0x9

.field static final TRANSACTION_hideXp:I = 0x5

.field static final TRANSACTION_isShowingWindow:I = 0xa

.field static final TRANSACTION_isXpObscured:I = 0xb

.field static final TRANSACTION_onWindowAttached:I = 0x2

.field static final TRANSACTION_onWindowDetached:I = 0x3

.field static final TRANSACTION_pauseXp:I = 0x4

.field static final TRANSACTION_resumeXp:I = 0xc

.field static final TRANSACTION_setAnimState:I = 0x7

.field static final TRANSACTION_showXp:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.xiaopeng.aiassistant.IAIControl"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/aiassistant/IAIControl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.xiaopeng.aiassistant.IAIControl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/aiassistant/IAIControl;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/aiassistant/IAIControl;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Lcom/xiaopeng/aiassistant/IAIControl$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/aiassistant/IAIControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const-string v0, "com.xiaopeng.aiassistant.IAIControl"

    .line 40
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 143
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 146
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->resumeXp(I)V

    .line 147
    return v2

    .line 135
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->isXpObscured()Z

    move-result v1

    .line 137
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    return v2

    .line 125
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->isShowingWindow(I)Z

    move-result v3

    .line 129
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v2

    .line 117
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->getXpAttributeConfig()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return v2

    .line 109
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->getShowingWindow()I

    move-result v1

    .line 111
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return v2

    .line 99
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->setAnimState(II)V

    .line 105
    return v2

    .line 91
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->showXp(I)V

    .line 95
    return v2

    .line 83
    .end local v1    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 86
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->hideXp(I)V

    .line 87
    return v2

    .line 75
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->pauseXp(I)V

    .line 79
    return v2

    .line 67
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 70
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->onWindowDetached(I)V

    .line 71
    return v2

    .line 59
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->onWindowAttached(I)V

    .line 63
    return v2

    .line 49
    .end local v1    # "_arg0":I
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 54
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/aiassistant/IAIControl$Stub;->closeWindow(II)V

    .line 55
    return v2

    .line 44
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
