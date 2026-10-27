.class public interface abstract Lcom/xiaopeng/xuimanager/theme/IThemeBase;
.super Ljava/lang/Object;
.source "IThemeBase.java"


# static fields
.field public static final DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/xiaopeng/xuimanager/theme/Theme;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuimanager/theme/Theme;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuimanager/theme/IThemeBase;->DEFAULT_THEME:Lcom/xiaopeng/xuimanager/theme/Theme;

    return-void
.end method


# virtual methods
.method public abstract addTheme(Ljava/lang/String;)V
.end method

.method public abstract deleteTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
.end method

.method public abstract getRemoteThemes()V
.end method

.method public abstract getSelectedTheme()Lcom/xiaopeng/xuimanager/theme/Theme;
.end method

.method public abstract getThemes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/theme/Theme;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerThemeListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V
.end method

.method public abstract selectTheme(Lcom/xiaopeng/xuimanager/theme/Theme;)V
.end method

.method public abstract unregisterThemeListener(Lcom/xiaopeng/xuimanager/theme/ThemeListener;)V
.end method
