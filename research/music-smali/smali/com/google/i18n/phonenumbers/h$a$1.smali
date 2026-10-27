.class final enum Lcom/google/i18n/phonenumbers/h$a$1;
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

    .line 533
    invoke-direct {p0, p1, p2, v0}, Lcom/google/i18n/phonenumbers/h$a;-><init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/PhoneNumberUtil$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/i18n/phonenumbers/j$a;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/h;Lcom/google/i18n/phonenumbers/g;)Z
    .locals 0

    .line 540
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/h;->d(Lcom/google/i18n/phonenumbers/j$a;)Z

    move-result p1

    return p1
.end method
