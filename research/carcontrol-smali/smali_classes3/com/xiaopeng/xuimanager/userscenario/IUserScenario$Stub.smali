.class public abstract Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;
.super Landroid/os/Binder;
.source "IUserScenario.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkEnterUserScenario:I = 0xd

.field static final TRANSACTION_enqueueScenario:I = 0x11

.field static final TRANSACTION_enterUserScenario:I = 0x1

.field static final TRANSACTION_enterUserScenarioWithExtra:I = 0x2

.field static final TRANSACTION_exitUserScenario:I = 0x3

.field static final TRANSACTION_exitUserScenarioWithExtra:I = 0x4

.field static final TRANSACTION_getCurrentUserScenario:I = 0x5

.field static final TRANSACTION_getCurrentUserScenarios:I = 0x6

.field static final TRANSACTION_getUserScenarioStatus:I = 0x7

.field static final TRANSACTION_registerBinderObserver:I = 0xb

.field static final TRANSACTION_registerBinderObserverWithData:I = 0xc

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_reportStatus:I = 0xa

.field static final TRANSACTION_requestAreaType:I = 0x10

.field static final TRANSACTION_requestWindowExchange:I = 0xf

.field static final TRANSACTION_setExitDialogConfig:I = 0x12

.field static final TRANSACTION_setParameters:I = 0xe

.field static final TRANSACTION_unregisterListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.userscenario.IUserScenario"

    .line 88
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.userscenario.IUserScenario"

    .line 99
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    if-eqz v1, :cond_1

    .line 101
    check-cast v0, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    return-object v0

    .line 103
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;
    .locals 1

    .line 800
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;)Z
    .locals 1

    .line 790
    sget-object v0, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 794
    sput-object p0, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/userscenario/IUserScenario;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 791
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.userscenario.IUserScenario"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 327
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 310
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 315
    sget-object p4, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 320
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->setExitDialogConfig(Ljava/lang/String;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;)I

    move-result p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 296
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_1

    move p4, v0

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 302
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 303
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->enqueueScenario(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 284
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->requestAreaType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 271
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 278
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->requestWindowExchange(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 259
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->setParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 247
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 252
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->checkEnterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 236
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->registerBinderObserverWithData(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 227
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->registerBinderObserver(Landroid/os/IBinder;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 216
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->reportStatus(Ljava/lang/String;I)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 207
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;

    move-result-object p1

    .line 210
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 198
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;

    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->registerListener(Lcom/xiaopeng/xuimanager/userscenario/IUserScenarioListener;)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 188
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 180
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->getCurrentUserScenarios()[Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v0

    .line 172
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->getCurrentUserScenario()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 160
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->exitUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 150
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->exitUserScenario(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 136
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->enterUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 124
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/userscenario/IUserScenario$Stub;->enterUserScenario(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 116
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
