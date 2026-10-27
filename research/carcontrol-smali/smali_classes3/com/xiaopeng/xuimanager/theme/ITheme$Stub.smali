.class public abstract Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;
.super Landroid/os/Binder;
.source "ITheme.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/theme/ITheme;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/theme/ITheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addTheme:I = 0x4

.field static final TRANSACTION_addThemeElement:I = 0x34

.field static final TRANSACTION_cancelDownloadTheme:I = 0xc

.field static final TRANSACTION_cancelDownloadThemeElement:I = 0x39

.field static final TRANSACTION_deleteTheme:I = 0x5

.field static final TRANSACTION_deleteThemeElement:I = 0x35

.field static final TRANSACTION_getBitmap:I = 0x26

.field static final TRANSACTION_getBitmapFromSelectedTheme:I = 0x27

.field static final TRANSACTION_getBoolean:I = 0x10

.field static final TRANSACTION_getBooleanArray:I = 0x1c

.field static final TRANSACTION_getBooleanArrayFromSelectedTheme:I = 0x1d

.field static final TRANSACTION_getBooleanFromSelectedTheme:I = 0x11

.field static final TRANSACTION_getColor:I = 0x16

.field static final TRANSACTION_getColorArray:I = 0x22

.field static final TRANSACTION_getColorArrayFromSelectedTheme:I = 0x23

.field static final TRANSACTION_getColorFromSelectedTheme:I = 0x17

.field static final TRANSACTION_getCurrentAppliedThemeElement:I = 0x31

.field static final TRANSACTION_getDimension:I = 0x18

.field static final TRANSACTION_getDimensionArray:I = 0x24

.field static final TRANSACTION_getDimensionArrayFromSelectedTheme:I = 0x25

.field static final TRANSACTION_getDimensionFromSelectedTheme:I = 0x19

.field static final TRANSACTION_getDownloadStatusInfo:I = 0xd

.field static final TRANSACTION_getFileBytes:I = 0x2a

.field static final TRANSACTION_getFileBytesFromSelectedTheme:I = 0x2b

.field static final TRANSACTION_getFileText:I = 0x28

.field static final TRANSACTION_getFileTextFromSelectedTheme:I = 0x29

.field static final TRANSACTION_getFloat:I = 0x14

.field static final TRANSACTION_getFloatArray:I = 0x20

.field static final TRANSACTION_getFloatArrayFromSelectedTheme:I = 0x21

.field static final TRANSACTION_getFloatFromSelectedTheme:I = 0x15

.field static final TRANSACTION_getInteger:I = 0x12

.field static final TRANSACTION_getIntegerArray:I = 0x1e

.field static final TRANSACTION_getIntegerArrayFromSelectedTheme:I = 0x1f

.field static final TRANSACTION_getIntegerFromSelectedTheme:I = 0x13

.field static final TRANSACTION_getRemoteThemeElements:I = 0x2e

.field static final TRANSACTION_getRemoteThemes:I = 0x1

.field static final TRANSACTION_getSelectedTheme:I = 0x3

.field static final TRANSACTION_getSelectedThemeElement:I = 0x30

.field static final TRANSACTION_getString:I = 0xe

.field static final TRANSACTION_getStringArray:I = 0x1a

.field static final TRANSACTION_getStringArrayFromSelectedTheme:I = 0x1b

.field static final TRANSACTION_getStringFromSelectedTheme:I = 0xf

.field static final TRANSACTION_getThemeElementDownloadStatusInfo:I = 0x3a

.field static final TRANSACTION_getThemeElements:I = 0x2f

.field static final TRANSACTION_getThemes:I = 0x2

.field static final TRANSACTION_pauseDownloadTheme:I = 0xa

.field static final TRANSACTION_pauseDownloadThemeElement:I = 0x37

.field static final TRANSACTION_registerThemeElementListener:I = 0x2c

.field static final TRANSACTION_registerThemeListener:I = 0x7

.field static final TRANSACTION_resumeDownloadTheme:I = 0xb

.field static final TRANSACTION_resumeDownloadThemeElement:I = 0x38

.field static final TRANSACTION_selectTheme:I = 0x6

.field static final TRANSACTION_selectThemeElement:I = 0x32

.field static final TRANSACTION_startDownloadTheme:I = 0x9

.field static final TRANSACTION_startDownloadThemeElement:I = 0x36

.field static final TRANSACTION_unregisterThemeElementListener:I = 0x2d

.field static final TRANSACTION_unregisterThemeListener:I = 0x8

.field static final TRANSACTION_unselectThemeElement:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 237
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 238
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/ITheme;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.theme.ITheme"

    .line 249
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/theme/ITheme;

    if-eqz v1, :cond_1

    .line 251
    check-cast v0, Lcom/xiaopeng/xuimanager/theme/ITheme;

    return-object v0

    .line 253
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/theme/ITheme;
    .locals 1

    .line 2707
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/ITheme;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/theme/ITheme;)Z
    .locals 1

    .line 2697
    sget-object v0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/ITheme;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 2701
    sput-object p0, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/theme/ITheme;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2698
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.theme.ITheme"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_28

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1076
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1061
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1064
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 1069
    :cond_0
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Ljava/lang/String;

    move-result-object p1

    .line 1070
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 1047
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1050
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 1055
    :cond_1
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 1056
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1033
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 1036
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 1041
    :cond_2
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 1019
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 1022
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 1027
    :cond_3
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 1028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 996
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 999
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    goto :goto_0

    :cond_4
    move-object p1, v3

    .line 1005
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    move v2, v0

    .line 1007
    :cond_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_6

    .line 1008
    sget-object p4, Lcom/xiaopeng/xuimanager/operation/OpenAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 1013
    :cond_6
    invoke-virtual {p0, p1, v2, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 982
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 985
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 990
    :cond_7
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 971
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 976
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->addThemeElement(ILjava/lang/String;)V

    .line 977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 962
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 965
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->unselectThemeElement(I)V

    .line 966
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 948
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 951
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    .line 956
    :cond_8
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 932
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 935
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1

    .line 936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 938
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 942
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 916
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 919
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;

    move-result-object p1

    .line 920
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    .line 922
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/theme/ThemeElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 926
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 906
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 909
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getThemeElements(I)Ljava/util/List;

    move-result-object p1

    .line 910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 897
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 900
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getRemoteThemeElements(I)V

    .line 901
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 888
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object p1

    .line 891
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->unregisterThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V

    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 879
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeElementListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;

    move-result-object p1

    .line 882
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->registerThemeElementListener(Lcom/xiaopeng/xuimanager/theme/IThemeElementListener;)V

    .line 883
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 869
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 872
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFileBytesFromSelectedTheme(Ljava/lang/String;)[B

    move-result-object p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 852
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    .line 855
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 861
    :cond_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 862
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFileBytes(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[B

    move-result-object p1

    .line 863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    return v0

    .line 842
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 845
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFileTextFromSelectedTheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 846
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 825
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_c

    .line 828
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 834
    :cond_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 835
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFileText(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 809
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 812
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getBitmapFromSelectedTheme(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 815
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 819
    :cond_d
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    .line 786
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    .line 789
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 795
    :cond_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 796
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getBitmap(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 799
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    invoke-virtual {p1, p3, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 803
    :cond_f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v0

    .line 776
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 779
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDimensionArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1

    .line 780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 759
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10

    .line 762
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 768
    :cond_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDimensionArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1

    .line 770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 749
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getColorArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 732
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11

    .line 735
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 741
    :cond_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 742
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getColorArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1

    .line 743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 722
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 725
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFloatArrayFromSelectedTheme(Ljava/lang/String;)[D

    move-result-object p1

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    return v0

    .line 705
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_12

    .line 708
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 714
    :cond_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 715
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFloatArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[D

    move-result-object p1

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeDoubleArray([D)V

    return v0

    .line 695
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getIntegerArrayFromSelectedTheme(Ljava/lang/String;)[I

    move-result-object p1

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 678
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_13

    .line 681
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 687
    :cond_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getIntegerArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[I

    move-result-object p1

    .line 689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v0

    .line 668
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getBooleanArrayFromSelectedTheme(Ljava/lang/String;)[Z

    move-result-object p1

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return v0

    .line 651
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_14

    .line 654
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 660
    :cond_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 661
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getBooleanArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)[Z

    move-result-object p1

    .line 662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return v0

    .line 641
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 644
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getStringArrayFromSelectedTheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 624
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_15

    .line 627
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 633
    :cond_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 634
    invoke-virtual {p0, v3, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getStringArray(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 612
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 616
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 617
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDimensionFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1

    .line 618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 593
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_16

    .line 596
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 602
    :cond_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 605
    invoke-virtual {p0, v3, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDimension(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 581
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 586
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getColorFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 562
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_17

    .line 565
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 571
    :cond_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 573
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 574
    invoke-virtual {p0, v3, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getColor(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1

    .line 575
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 550
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 555
    invoke-virtual {p0, p1, v1, v2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFloatFromSelectedTheme(Ljava/lang/String;D)D

    move-result-wide p1

    .line 556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    return v0

    .line 531
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    .line 534
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 540
    :cond_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    .line 543
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getFloat(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;D)D

    move-result-wide p1

    .line 544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    return v0

    .line 519
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getIntegerFromSelectedTheme(Ljava/lang/String;I)I

    move-result p1

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 500
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_19

    .line 503
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 509
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 512
    invoke-virtual {p0, v3, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getInteger(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;I)I

    move-result p1

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 488
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1a

    move v2, v0

    .line 493
    :cond_1a
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getBooleanFromSelectedTheme(Ljava/lang/String;Z)Z

    move-result p1

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 469
    :pswitch_2a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1b

    .line 472
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 478
    :cond_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1c

    move v2, v0

    .line 481
    :cond_1c
    invoke-virtual {p0, v3, p1, v2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getBoolean(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Z)Z

    move-result p1

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 457
    :pswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getStringFromSelectedTheme(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 438
    :pswitch_2c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1d

    .line 441
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 447
    :cond_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 450
    invoke-virtual {p0, v3, p1, p2}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getString(Lcom/xiaopeng/xuimanager/theme/Theme;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 423
    :pswitch_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1e

    .line 426
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 431
    :cond_1e
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/Theme;)Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 409
    :pswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1f

    .line 412
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 417
    :cond_1f
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->cancelDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 395
    :pswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_20

    .line 398
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 403
    :cond_20
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->resumeDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 381
    :pswitch_30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_21

    .line 384
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 389
    :cond_21
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->pauseDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 358
    :pswitch_31
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    .line 361
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/theme/Theme;

    goto :goto_5

    :cond_22
    move-object p1, v3

    .line 367
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_23

    move v2, v0

    .line 369
    :cond_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_24

    .line 370
    sget-object p4, Lcom/xiaopeng/xuimanager/operation/OpenAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaopeng/xuimanager/operation/OpenAction;

    .line 375
    :cond_24
    invoke-virtual {p0, p1, v2, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->startDownloadTheme(Lcom/xiaopeng/xuimanager/theme/Theme;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 349
    :pswitch_32
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object p1

    .line 352
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->unregisterThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 340
    :pswitch_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/theme/IThemeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/theme/IThemeListener;

    move-result-object p1

    .line 343
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->registerThemeListener(Lcom/xiaopeng/xuimanager/theme/IThemeListener;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 326
    :pswitch_34
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_25

    .line 329
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 334
    :cond_25
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 312
    :pswitch_35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_26

    .line 315
    sget-object p1, Lcom/xiaopeng/xuimanager/theme/Theme;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/xiaopeng/xuimanager/theme/Theme;

    .line 320
    :cond_26
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 303
    :pswitch_36
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->addTheme(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 289
    :pswitch_37
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;

    move-result-object p1

    .line 291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_27

    .line 293
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/theme/Theme;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    .line 297
    :cond_27
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v0

    .line 281
    :pswitch_38
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getThemes()Ljava/util/List;

    move-result-object p1

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 274
    :pswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/theme/ITheme$Stub;->getRemoteThemes()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 266
    :cond_28
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
