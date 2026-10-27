.class public Lcom/alibaba/sdk/android/httpdns/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/SharedPreferences;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Z

    return-void
.end method

.method public static a(Z)V
    .locals 2

    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/b;->a:Z

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_enable"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EnableManager] enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Z

    return v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "httpdns_config_enable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/httpdns/b;->a:Landroid/content/SharedPreferences;

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/b;->a:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/alibaba/sdk/android/httpdns/b;->a:Landroid/content/SharedPreferences;

    const-string v0, "key_enable"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/alibaba/sdk/android/httpdns/b;->a:Z

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[EnableManager] init enable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/b;->a:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
