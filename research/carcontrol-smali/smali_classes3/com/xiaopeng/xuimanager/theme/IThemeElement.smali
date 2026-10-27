.class public interface abstract Lcom/xiaopeng/xuimanager/theme/IThemeElement;
.super Ljava/lang/Object;
.source "IThemeElement.java"


# static fields
.field public static final SUPPORTED_THEME_ELEMENTS:[I

.field public static final THEME_ELEMENT_TYPE_SR:I = 0x107b26

.field public static final THEME_ELEMENT_TYPE_XIAO_P:I = 0x107b25


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/IThemeElement;->SUPPORTED_THEME_ELEMENTS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x107b25
        0x107b26
    .end array-data
.end method


# virtual methods
.method public abstract addThemeElement(ILjava/lang/String;)V
.end method

.method public abstract cancelDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
.end method

.method public abstract deleteThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
.end method

.method public abstract getCurrentAppliedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
.end method

.method public abstract getRemoteThemeElements(I)V
.end method

.method public abstract getSelectedThemeElement(I)Lcom/xiaopeng/xuimanager/theme/ThemeElement;
.end method

.method public abstract getThemeElementDownloadStatusInfo(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)Lcom/xiaopeng/xuimanager/operation/DownloadStatusInfo;
.end method

.method public abstract getThemeElements(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/ThemeElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract pauseDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
.end method

.method public abstract registerThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
.end method

.method public abstract resumeDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
.end method

.method public abstract selectThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
.end method

.method public abstract startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;)V
.end method

.method public abstract startDownloadThemeElement(Lcom/xiaopeng/xuimanager/theme/ThemeElement;ZLcom/xiaopeng/xuimanager/operation/OpenAction;)V
.end method

.method public abstract unregisterThemeElementListener(ILcom/xiaopeng/xuimanager/theme/ThemeElementListener;)V
.end method

.method public abstract unselectThemeElement(I)V
.end method
