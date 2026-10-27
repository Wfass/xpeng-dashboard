.class final enum Lcom/google/i18n/phonenumbers/h$a$4;
.super Lcom/google/i18n/phonenumbers/h$a;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 612
    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h$a;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h;Lcom/google/i18n/phonenumbers/g;)Z
    .locals 2

    .line 619
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/h;->b(Lcom/google/i18n/phonenumbers/j$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    invoke-static {p1, v0, p3}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/String;Lcom/google/i18n/phonenumbers/h;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    invoke-static {p1, v0}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    invoke-static {p1, p3}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/j$a;Lcom/google/i18n/phonenumbers/h;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    new-instance v0, Lcom/google/i18n/phonenumbers/h$a$4$1;

    invoke-direct {v0, p0}, Lcom/google/i18n/phonenumbers/h$a$4$1;-><init>(Lcom/google/i18n/phonenumbers/h$a$4;)V

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/google/i18n/phonenumbers/g;->a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h;Lcom/google/i18n/phonenumbers/g$a;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
