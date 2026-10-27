.class public abstract Lcom/thunder/voiceinterface/IVoiceInterface$Stub;
.super Landroid/os/Binder;
.source "IVoiceInterface.java"

# interfaces
.implements Lcom/thunder/voiceinterface/IVoiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thunder/voiceinterface/IVoiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thunder/voiceinterface/IVoiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.thunder.voiceinterface.IVoiceInterface"

.field static final TRANSACTION_addSongOrdered:I = 0x6

.field static final TRANSACTION_exitApplication:I = 0x1

.field static final TRANSACTION_nextPage:I = 0x4

.field static final TRANSACTION_nextSong:I = 0x9

.field static final TRANSACTION_openAtmosphere:I = 0xc

.field static final TRANSACTION_originalSinging:I = 0x8

.field static final TRANSACTION_playOrPause:I = 0xa

.field static final TRANSACTION_previousPage:I = 0x3

.field static final TRANSACTION_replay:I = 0xb

.field static final TRANSACTION_scrollTop:I = 0x5

.field static final TRANSACTION_searchSong:I = 0x2

.field static final TRANSACTION_singRightNow:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "com.thunder.voiceinterface.IVoiceInterface"

    invoke-virtual {p0, p0, v0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/thunder/voiceinterface/IVoiceInterface;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 111
    :cond_0
    const-string v0, "com.thunder.voiceinterface.IVoiceInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/thunder/voiceinterface/IVoiceInterface;

    if-eqz v1, :cond_1

    .line 113
    move-object v1, v0

    check-cast v1, Lcom/thunder/voiceinterface/IVoiceInterface;

    return-object v1

    .line 115
    :cond_1
    new-instance v1, Lcom/thunder/voiceinterface/IVoiceInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/thunder/voiceinterface/IVoiceInterface;
    .locals 1

    .line 534
    sget-object v0, Lcom/thunder/voiceinterface/IVoiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/thunder/voiceinterface/IVoiceInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/thunder/voiceinterface/IVoiceInterface;)Z
    .locals 1
    .param p0, "impl"    # Lcom/thunder/voiceinterface/IVoiceInterface;

    .line 527
    sget-object v0, Lcom/thunder/voiceinterface/IVoiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/thunder/voiceinterface/IVoiceInterface;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 528
    sput-object p0, Lcom/thunder/voiceinterface/IVoiceInterface$Stub$Proxy;->sDefaultImpl:Lcom/thunder/voiceinterface/IVoiceInterface;

    .line 529
    const/4 v0, 0x1

    return v0

    .line 531
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 119
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

    .line 123
    const-string v0, "com.thunder.voiceinterface.IVoiceInterface"

    .line 124
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 231
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 222
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->openAtmosphere(I)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    return v2

    .line 215
    .end local v1    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->replay()V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v2

    .line 206
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 209
    .local v1, "_arg0":Z
    :cond_0
    invoke-virtual {p0, v1}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->playOrPause(Z)V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    return v2

    .line 199
    .end local v1    # "_arg0":Z
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->nextSong()V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    return v2

    .line 190
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 193
    .restart local v1    # "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->originalSinging(Z)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    return v2

    .line 181
    .end local v1    # "_arg0":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->singRightNow(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    return v2

    .line 172
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->addSongOrdered(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    return v2

    .line 165
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->scrollTop()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    return v2

    .line 158
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->nextPage()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    return v2

    .line 151
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->previousPage()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v2

    .line 140
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 144
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->searchSong(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v2

    .line 133
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/thunder/voiceinterface/IVoiceInterface$Stub;->exitApplication()V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    return v2

    .line 128
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v2

    nop

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
